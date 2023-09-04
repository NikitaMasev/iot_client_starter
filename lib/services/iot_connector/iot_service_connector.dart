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
    this.pingInterval = const Duration(seconds: 5),
  });

  final String ip;
  final String port;
  final Duration pingInterval;

  late WebSocketChannel _channel;
  StreamSubscription? _subChannel;

  final _controllerProxyWebsocket = StreamController<String>.broadcast();
  final _controllerChannelState = StreamController<ChannelState>.broadcast()
    ..add(ChannelInitial());

  var _reconnectionFlow = false;
  late final Timer _timerCheckConnection;

  @override
  void run() {
    _controllerChannelState.add(ChannelLoading());

    _runConnection().then((final connected) async {
      await _runSubSocket();

      if (connected) {
        _controllerChannelState.add(ChannelReady());
      } else {
        //_controllerChannelState.add(ChannelError(error: 'Error connection'));
        _reconnectionFlow = true;
      }
    });

    _launchTimerCheckErrorConnection();
  }

  void _launchTimerCheckErrorConnection() {
    var connected = true;
    _timerCheckConnection = Timer.periodic(
      pingInterval,
          (final _) async {
        print('_launchTimerCheckErrorConnection');
        print(_channel.closeCode);
        print(_channel.closeReason);
        print('_reconnectionFlow $_reconnectionFlow');

        if (_channel.closeCode != null) {
          _reconnectionFlow = true;
        }

        if (_reconnectionFlow) {
          print('_launchTimerCheckErrorConnection IF _reconnectionFlow');
          final connectedRun =  await _runConnection();

          print('connected $connected');
          print('connectedRun $connectedRun');

          if (!connectedRun) {
            _controllerChannelState.add(ChannelError(error: 'Error connection'));
          }

          if (!connected && connectedRun) {
            _reconnectionFlow = false;
            _controllerChannelState.add(ChannelReady());
          }

          connected = connectedRun;
        }
      },
    );
  }

  Future<bool> _runConnection() async {
    var connected = true;
    try {
      ///don't use pingInterval, cause backend(with shelf_io) drop connection
      ///after successfull reconnection
      _channel = IOWebSocketChannel.connect(
        Uri.parse('ws://$ip:$port'),
        //pingInterval: const Duration(seconds: 2),
      );
      await _channel.ready;
    } catch (e) {
      connected = false;
      print('IN TRY CATCH ${e.toString()}');
    }
    return connected;
  }

  Future<void> _runSubSocket() async {
    print('_runSubSocket');
    _subChannel = _channel.stream.listen(
          (final rawData) {
        if (rawData is String) {
          _controllerProxyWebsocket.add(rawData);
        }
      },
      onError: (final err) {
        print('IN _runSubSocket ${err.toString()}');
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
