import 'dart:async';

import 'package:iot_client_starter/services/iot_connector/iot_channel_provider.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:websocket_universal/websocket_universal.dart';

class IotServiceConnector implements Runnable, IotChannelProvider {
  IotServiceConnector({
    required final this.ip,
    required final this.port,
    this.pingInterval = const Duration(seconds: 2),
  });

  final String ip;
  final String port;
  final Duration pingInterval;

  StreamSubscription? _subChannel;

  final _controllerProxyWebsocket = StreamController<String>.broadcast();
  late final IWebSocketHandler<String, String> textSocketHandler;

  @override
  void run() {
    _asyncRun();
  }

  Future<void> _asyncRun() async{
    const connectionOptions = SocketConnectionOptions(
      pingIntervalMs: 3000, // send Ping message every 3000 ms
      timeoutConnectionMs: 4000, // connection fail timeout after 4000 ms
      skipPingMessages: false,
      pingRestrictionForce: false,
    );
    final textSocketProcessor = SocketSimpleTextProcessor();
    textSocketHandler = IWebSocketHandler<String, String>.createClient(
      'ws://$ip:$port', // Postman echo ws server
      textSocketProcessor,
      connectionOptions: connectionOptions,
    );

    // Listening to webSocket status changes
    textSocketHandler.socketHandlerStateStream.listen((final stateEvent) {
      // ignore: avoid_print
      print('> status changed to ${stateEvent.status}');
    });

    // Listening to server responses:
    textSocketHandler.incomingMessagesStream.listen((final inMsg) {
      // ignore: avoid_print
      print('> webSocket  got text message from server: "$inMsg" '
          '[ping: ${textSocketHandler.pingDelayMs}]');

      if (inMsg.isNotEmpty) {
        _controllerProxyWebsocket.add(inMsg);
      }
    });

    // Listening to debug events inside webSocket
    textSocketHandler.logEventStream.listen((final debugEvent) {
      // ignore: avoid_print
      print('> debug event: ${debugEvent.socketLogEventType}'
          ' [ping=${debugEvent.pingMs} ms]. Debug message=${debugEvent.message}');
    });

    // Connecting to server:
    final isTextSocketConnected = await textSocketHandler.connect();
    if (!isTextSocketConnected) {
      // ignore: avoid_print
      print('Connection failed for some reason!');
      return;
    }
  }

  @override
  void sinkRawData(final String data) => textSocketHandler.sendMessage(data);

  @override
  Stream<String> watchRawChannel() => _controllerProxyWebsocket.stream;
}

// import 'dart:async';
//
// import 'package:iot_client_starter/services/iot_connector/iot_channel_provider.dart';
// import 'package:iot_internal/iot_internal.dart';
// import 'package:web_socket_channel/io.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class IotServiceConnector implements Runnable, IotChannelProvider {
//   IotServiceConnector({
//     required final this.ip,
//     required final this.port,
//     this.pingInterval = const Duration(seconds: 2),
//   });
//
//   final String ip;
//   final String port;
//   final Duration pingInterval;
//
//   late WebSocketChannel _channel;
//   StreamSubscription? _subChannel;
//
//   final _controllerProxyWebsocket = StreamController<String>.broadcast();
//   final _broadcastRawChannel = StreamController.broadcast();
//   var _connectError = false;
//   late final Timer _timerCheckConnection;
//
//   @override
//   void run() {
//     _tryConnect();
//     _launchTimerCheckErrorConnection();
//   }
//
//   void _launchTimerCheckErrorConnection() {
//     _timerCheckConnection = Timer.periodic(
//       pingInterval,
//       (final _) {
//         if (_channel.closeCode != null || _connectError) {
//           _tryConnect();
//         }
//       },
//     );
//   }
//
//   Future<void> _tryConnect() async {
//     if (_subChannel != null) {
//       await _subChannel?.cancel();
//       await _channel.sink.close();
//       _subChannel = null;
//     }
//
//     try {
//       _channel = IOWebSocketChannel.connect(
//         Uri.parse('ws://$ip:$port'),
//         pingInterval: pingInterval,
//       );
//       await _channel.ready;
//     } catch (e) {
//       print(e.toString());
//     }
//
//     _subChannel = _broadcastRawChannel.stream.listen(
//       (final rawData) {
//         _connectError = false;
//         if (rawData is String) {
//           _controllerProxyWebsocket.add(rawData);
//         }
//       },
//       onError: (final err) {
//         _connectError = true;
//         if (err != null) {
//           _controllerProxyWebsocket.addError(err as Object);
//         } else {
//           _controllerProxyWebsocket.addError(
//             'Unknown error in main WebSocketChannel',
//           );
//         }
//       },
//     );
//
//     await _broadcastRawChannel.addStream(_channel.stream);
//   }
//
//   @override
//   void sinkRawData(final String data) => _channel.sink.add(data);
//
//   @override
//   Stream<String> watchRawChannel() => _controllerProxyWebsocket.stream;
// }
