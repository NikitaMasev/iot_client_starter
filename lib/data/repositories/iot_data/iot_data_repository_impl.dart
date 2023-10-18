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
    required this.localStateWatcher,
    required this.remoteStateWatcher,
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
  final ChannelStateWatcher localStateWatcher;
  final ChannelStateWatcher remoteStateWatcher;
  final Runnable localRunnable;
  final Runnable remoteRunnable;
  final Pausable localPausable;
  final Pausable remotePausable;
  final Resumable localResumable;
  final Resumable remoteResumable;
  final bool useLogging;

  late final StreamSubscription _subLocalStateWatcher;
  ChannelState _lastLocalStateWatcher = ChannelInitial();

  @override
  void sendClient(final Client client) {
    localStateWatcher.lastState().then((final state) {
      if (useLogging) {
        print('IotDataRepositoryImpl sendClient $state');
      }
      if (state.runtimeType == ChannelReady().runtimeType) {
        localChannelDataProvider.send(client);
      } else {
        remoteChannelDataProvider.send(client);
      }
    });
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
    if (_lastLocalStateWatcher is ChannelDisconnected ||
        _lastLocalStateWatcher is ChannelError) {
      return remoteStateWatcher.lastState().then(_toIotState);
    } else {
      return localStateWatcher.lastState().then(_toIotState);
    }
  }

  @override
  Stream<IotState> watchState() => MergeStream<ChannelState>([
        localStateWatcher.watchState(),
        remoteStateWatcher.watchState(),
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
    _subLocalStateWatcher = localStateWatcher.watchState().listen(
      (final state) {
        _lastLocalStateWatcher = state;
        switch (state) {
          case ChannelInitial():
            break;
          case ChannelLoading():
            break;
          case ChannelDisconnected():
            remoteResumable.resume();
            break;
          case ChannelError():
            remoteResumable.resume();
            break;
          case ChannelReady():
            remotePausable.pause();
            break;
        }
      },
    );
    localRunnable.run();
    remoteRunnable.run();
  }

  @override
  void pause() {
    remotePausable.pause();
    localPausable.pause();
  }

  @override
  void resume() {
    remoteResumable.resume();
    localResumable.resume();
  }
}
