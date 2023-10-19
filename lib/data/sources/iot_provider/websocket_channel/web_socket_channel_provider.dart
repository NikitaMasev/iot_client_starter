import 'dart:async';

import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/channel_state.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/channel_state_watcher.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/raw_data_channel_provider.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:websocket_universal/websocket_universal.dart';

class WebSocketChannelProvider
    implements
        Runnable,
        Pausable,
        Resumable,
        RawDataChannelProvider,
        ChannelStateWatcher {
  WebSocketChannelProvider({
    required this.ip,
    required this.port,
    required this.connectionOptions,
    required this.textSocketProcessor,
    this.useLogging = false,
  });

  final String ip;
  final String port;
  final SocketConnectionOptions connectionOptions;
  final IMessageProcessor<String, String> textSocketProcessor;
  final bool useLogging;

  late final IWebSocketHandler<String, String> _channel;
  late final StreamSubscription _subChannelState;
  late final StreamSubscription _subChannel;
  ChannelState _currentChannelState = ChannelInitial();

  final _controllerProxyWebsocket = StreamController<String>.broadcast();
  final _controllerChannelState = StreamController<ChannelState>.broadcast()
    ..add(ChannelInitial());

  @override
  void run() {
    _controllerChannelState.add(ChannelLoading());

    _channel = IWebSocketHandler<String, String>.createClient(
      'ws://$ip:$port', // Postman echo ws server
      textSocketProcessor,
      connectionOptions: connectionOptions,
    );

    _subChannelState = _channel.socketStateStream.listen(
      (final stateChannel) {
        if (useLogging) {
          print(
              'WebSocketChannelProvider IotServiceConnector STATE ${stateChannel.message}');
        }
        switch (stateChannel.status) {
          case SocketStatus.disconnected:
            _currentChannelState = ChannelDisconnected();
            _controllerChannelState.add(ChannelDisconnected());
            break;
          case SocketStatus.connecting:
            _currentChannelState = ChannelLoading();
            _controllerChannelState.add(ChannelLoading());
            break;
          case SocketStatus.connected:
            _currentChannelState = ChannelReady();
            _controllerChannelState.add(ChannelReady());
            break;
        }
      },
      onError: (final err) {
        _currentChannelState = ChannelError(error: err.toString());
        _controllerChannelState.add(_currentChannelState);
      },
    );

    _subChannel = _channel.incomingMessagesStream.listen(
      (final rawData) {
/*        if (useLogging) {
          print('IotServiceConnector INCOMING MSG $rawData');
        }*/
        if (rawData.isNotEmpty) {
          _controllerProxyWebsocket.add(rawData);
        }
      },
      onError: (final err) => _controllerProxyWebsocket.addError(
        err.toString(),
      ),
    );
    _channel.connect();
  }

  @override
  bool send(final String data) => _channel.sendMessage(data);

  @override
  Stream<String> watchModel() => _controllerProxyWebsocket.stream;

  @override
  Stream<ChannelState> watchState() => _controllerChannelState.stream;

  @override
  Future<ChannelState> lastState() => Future.value(_currentChannelState);

  @override
  void pause() {
    _subChannelState.pause();
    _subChannel.pause();
    if (useLogging) {
      print('WebSocketChannelProvider pause() $ip');
    }
  }

  @override
  void resume() {
    _subChannelState.resume();
    _subChannel.resume();
    if (useLogging) {
      print('WebSocketChannelProvider resume() $ip');
    }
  }

  @override
  bool isPaused() => _subChannelState.isPaused;

  @override
  bool isResumed() => !_subChannelState.isPaused;
}
