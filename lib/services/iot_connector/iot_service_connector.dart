import 'dart:async';

import 'package:iot_client_starter/models/channel_state.dart';
import 'package:iot_client_starter/services/iot_connector/channel_state_watcher.dart';
import 'package:iot_client_starter/services/iot_connector/iot_channel_provider.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class IotServiceConnector
    implements Runnable, IotChannelProvider, ChannelStateWatcher {
  IotServiceConnector({
    required this.ip,
    required this.port,
    this.pingInterval = const Duration(seconds: 10),
  });

  final String ip;
  final String port;
  final Duration pingInterval;

  late WebSocketChannel _channel;
  StreamSubscription? _subChannel;

  final _controllerProxyWebsocket = StreamController<String>.broadcast();
  final _controllerChannelState = StreamController<ChannelState>.broadcast()
    ..add(ChannelInitial());

  var _connectError = false;
  late final Timer _timerCheckConnection;

  @override
  void run() {
    _controllerChannelState.add(ChannelLoading());
    _runConnection().then((final _) => _runSubSocket());
    _launchTimerCheckErrorConnection();
  }

  void _launchTimerCheckErrorConnection() {
    _timerCheckConnection = Timer.periodic(
      pingInterval,
      (final _) async {
        final errorBefore = _connectError;
        await _runConnection();
        final errorAfter = _connectError;

        print('errorBefore $errorBefore');
        print('errorAfter $errorAfter');

        if (errorAfter) {
          _controllerChannelState.add(ChannelError(error: 'Error connection'));
        }

        if (errorBefore && !errorAfter) {
          _controllerChannelState.add(ChannelReady());
        }
      },
    );
  }

  Future<void> _runConnection() async {
    print('_runConnection');
    var exceptionConnection = false;
    try {
      _channel = IOWebSocketChannel.connect(
        Uri.parse('ws://$ip:$port'),
        pingInterval: pingInterval,
      );
      await _channel.ready;
    } catch (e) {
      exceptionConnection = true;
      print('IN TRY CATCH ${e.toString()}');
      //_controllerProxyWebsocket.addError(e as Object);
    }
    print('exceptionConnection $exceptionConnection');
    _connectError = exceptionConnection;
  }

  Future<void> _runSubSocket() async {
    print('_runSubSocket');
    _subChannel = _channel.stream.listen(
      (final rawData) {
        _connectError = false;
        if (rawData is String) {
          _controllerProxyWebsocket.add(rawData);
        }
      },
      onError: (final err) {
        print('IN _runSubSocket ${err.toString()}');
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
  void sinkRawData(final String data) {
    print('sinkRawData ${data}');
    _channel.sink.add(data);
  }

  @override
  Stream<String> watchRawChannel() => _controllerProxyWebsocket.stream;

  @override
  Stream<ChannelState> watchState() => _controllerChannelState.stream;
}
