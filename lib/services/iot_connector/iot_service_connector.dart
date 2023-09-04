import 'dart:async';

import 'package:iot_client_starter/models/channel_state.dart';
import 'package:iot_client_starter/services/iot_connector/channel_state_watcher.dart';
import 'package:iot_client_starter/services/iot_connector/iot_channel_provider.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:websocket_universal/websocket_universal.dart';

class IotServiceConnector
    implements Runnable, IotChannelProvider, ChannelStateWatcher {
  IotServiceConnector({
    required this.ip,
    required this.port,
    required this.connectionOptions,
    required this.textSocketProcessor,
  });

  final String ip;
  final String port;
  final SocketConnectionOptions connectionOptions;
  final IMessageProcessor<String, String> textSocketProcessor;

  late final IWebSocketHandler<String, String> _channel;
  late final StreamSubscription _subChannelState;
  late final StreamSubscription _subChannel;

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
        print('INCOMING STATE ${stateChannel.message}');
        switch (stateChannel.status) {
          case SocketStatus.disconnected:
            _controllerChannelState.add(ChannelDisconnected());
            break;
          case SocketStatus.connecting:
            _controllerChannelState.add(ChannelLoading());
            break;
          case SocketStatus.connected:
            _controllerChannelState.add(ChannelReady());
            break;
        }
      },
      onError: (final err) => _controllerChannelState.add(
        ChannelError(error: err.toString()),
      ),
    );

    _subChannel = _channel.incomingMessagesStream.listen(
      (final rawData) {
        print('INCOMING MSG $rawData');
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
  void sinkRawData(final String data) => _channel.sendMessage(data);

  @override
  Stream<String> watchRawChannel() => _controllerProxyWebsocket.stream;

  @override
  Stream<ChannelState> watchState() => _controllerChannelState.stream;
}
