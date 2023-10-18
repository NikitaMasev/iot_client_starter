import 'dart:async';

import 'package:iot_client_starter/data/repositories/iot_client_repository.dart';
import 'package:iot_client_starter/data/repositories/iot_devices_repository.dart';
import 'package:iot_client_starter/data/sources/iot_provider/data_channel/channel_data_provider.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/channel_state.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/channel_state_watcher.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:iot_models/models/client.dart';
import 'package:iot_models/models/iot_devices_data_wrapper.dart';
import 'package:rxdart/rxdart.dart';

class IotDataRepositoryImpl
    implements IotClientRepository, IotDevicesRepository {
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

  void _run() {
    _subLocalStateWatcher = localStateWatcher.watchState().listen(
      (final state) {
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
}
