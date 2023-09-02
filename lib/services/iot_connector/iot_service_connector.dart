import 'dart:async';

import 'package:iot_client_starter/services/iot_connector/iot_channel_provider.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class IotServiceConnector implements Runnable, IotChannelProvider {
  IotServiceConnector({
    required final this.ip,
    required final this.port,
    this.pingInterval = const Duration(seconds: 2),
  });

  final String ip;
  final String port;
  final Duration pingInterval;

  late WebSocketChannel _channel;
  final _controllerProxyWebsocket = StreamController<String>.broadcast();
  var _connectError = false;
  late final Timer _timerCheckConnection;

  @override
  void run() {
    _tryConnect();
    _launchTimerCheckErrorConnection();
  }

  void _launchTimerCheckErrorConnection() {
    _timerCheckConnection = Timer.periodic(
      pingInterval,
      (final _) {
        if (_channel.closeCode != null || _connectError) {
          _tryConnect();
        }
      },
    );
  }

  void _tryConnect() {
    print('_tryConnect');
    _channel = IOWebSocketChannel.connect(
      Uri.parse('ws://$ip:$port'),
      pingInterval: pingInterval,
    );

    _channel.stream.listen(
      (final rawData) {
        _connectError = false;
        if (rawData is String) {
          _controllerProxyWebsocket.add(rawData);
        }
      },
      onError: (final err) {
        _connectError = true;
        if (err != null) {
          _controllerProxyWebsocket.addError(err as Object);
        } else {
          _controllerProxyWebsocket.addError(
            'Unknown error in main WebSocketChannel',
          );
        }
      },
    );
  }

  @override
  void sinkRawData(final String data) => _channel.sink.add(data);

  @override
  Stream<String> watchRawChannel() => _controllerProxyWebsocket.stream;
}
