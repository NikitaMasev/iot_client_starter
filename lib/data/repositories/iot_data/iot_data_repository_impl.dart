import 'dart:async';

import 'package:iot_client_starter/data/repositories/iot_data/client_repository.dart';
import 'package:iot_client_starter/data/repositories/iot_data/devices_repository.dart';
import 'package:iot_client_starter/data/repositories/iot_data/iot_state_repository.dart';
import 'package:iot_client_starter/data/repositories/models/iot_state.dart';
import 'package:iot_client_starter/data/sources/iot_provider/data_channel/channel_data_provider.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/channel_state.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/channel_state_watcher.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:iot_models/models/client.dart';
import 'package:iot_models/models/iot_devices_data_wrapper.dart';
import 'package:launchable_interfaces/launchable_interfaces.dart';
import 'package:rxdart/rxdart.dart';

class IotDataRepositoryImpl
    implements
        ClientRepository,
        DevicesRepository,
        IotStateRepository,
        Pausable,
        Resumable {
  IotDataRepositoryImpl({
    required this.localChannelDataProvider,
    required this.remoteChannelDataProvider,
    required this.localChannelStateWatcher,
    required this.remoteChannelStateWatcher,
    required this.localRunnable,
    required this.remoteRunnable,
    required this.localPausable,
    required this.remotePausable,
    required this.localResumable,
    required this.remoteResumable,
    this.useLogging = false,
  }) {
    _run();
  }

  final ChannelDataProvider localChannelDataProvider;
  final ChannelDataProvider remoteChannelDataProvider;
  final ChannelStateWatcher localChannelStateWatcher;
  final ChannelStateWatcher remoteChannelStateWatcher;
  final Runnable localRunnable;
  final Runnable remoteRunnable;
  final Pausable localPausable;
  final Pausable remotePausable;
  final Resumable localResumable;
  final Resumable remoteResumable;
  final bool useLogging;

  final _localProxyChannelStateController =
      StreamController<ChannelState>.broadcast();

  late final StreamSubscription _subLocalChannelState;
  var _globalPause = false;

  @override
  void sendClient(final Client client) {
    if (remoteResumable.isResumed()) {
      remoteChannelDataProvider.send(client);
    } else {
      localChannelDataProvider.send(client);
    }
  }

  @override
  Stream<Client> watchClientModel() => MergeStream([
        localChannelDataProvider.watchModel(),
        remoteChannelDataProvider.watchModel(),
      ]);

  @override
  Stream<IotDevicesDataWrapper> watchIotDevicesModel() => MergeStream([
        localChannelDataProvider.watchIotDevicesModel(),
        remoteChannelDataProvider.watchIotDevicesModel(),
      ]);

  @override
  Future<IotState> lastState() {
    if (remoteResumable.isResumed()) {
      return remoteChannelStateWatcher.lastState().then(_toIotState);
    } else {
      return localChannelStateWatcher.lastState().then(_toIotState);
    }
  }

  @override
  Stream<IotState> watchState() => MergeStream<ChannelState>([
        _localProxyChannelStateController.stream,
        remoteChannelStateWatcher.watchState(),
      ]).map<IotState>(_toIotState);

  IotState _toIotState(final ChannelState channelState) =>
      switch (channelState) {
        ChannelInitial() => IotLoading(),
        ChannelLoading() => IotLoading(),
        ChannelDisconnected() => IotDisconnected(),
        ChannelError(error: final err) => IotError(error: err),
        ChannelReady() => IotReady(),
      };

  void _run() {
    _subLocalChannelState = localChannelStateWatcher.watchState().listen(
      (final state) {
        if (useLogging) {
          print('IotDataRepositoryImpl localStateWatcher $state');
        }

        if (remotePausable.isPaused()) {
          _localProxyChannelStateController.add(state);
        }

        switch (state) {
          case ChannelInitial():
            break;
          case ChannelLoading():
            break;
          case ChannelDisconnected():
            remoteResumable.resume();
            _localProxyChannelStateController.add(ChannelLoading());
            break;
          case ChannelError():
            remoteResumable.resume();
            _localProxyChannelStateController.add(ChannelLoading());
            break;
          case ChannelReady():
            remotePausable.pause();
            break;
        }
      },
    );
    localRunnable.run();
    remoteRunnable.run();
    remotePausable.pause();
  }

  @override
  void pause() {
    remotePausable.pause();
    localPausable.pause();
    if (useLogging) {
      print('IotDataRepositoryImpl pause()');
    }
    _globalPause = true;
  }

  @override
  void resume() {
    localResumable.resume();
    if (useLogging) {
      print('IotDataRepositoryImpl resume()');
    }
    _globalPause = false;
  }

  @override
  bool isPaused() => _globalPause;

  @override
  bool isResumed() => !_globalPause;
}
