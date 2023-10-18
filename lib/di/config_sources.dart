import 'package:iot_client_starter/data/repositories/user/user_repository_impl.dart';
import 'package:iot_client_starter/data/sources/iot_provider/crypto_channel/crypto_channel_provider.dart';
import 'package:iot_client_starter/data/sources/iot_provider/data_channel/channel_data_provider.dart';
import 'package:iot_client_starter/data/sources/iot_provider/data_channel/iot_channel_data_provider.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/channel_state_watcher.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/raw_data_channel_provider.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/web_socket_channel_provider.dart';
import 'package:iot_client_starter/data/sources/shared_persistent_impl.dart';
import 'package:iot_client_starter/iot_client_starter.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:iot_models/iot_models.dart';
import 'package:websocket_universal/websocket_universal.dart';

Future<ChannelDataProvider> configChannelData(
  final RawDataChannelProvider rawDataChannelProvider,
) async =>
    IotChannelDataProvider(
      rawDataChannelProvider: rawDataChannelProvider,
      communicatorSignDecoder: const CommunicatorSignDecoderImpl(),
      iotDevicesCodec: const IotDevicesCodecImpl(),
      clientCodec: const ClientCodecImpl(),
    );

Future<SharedPersistent> _configSharedPersistent() async =>
    SharedPersistentImpl();

Future<UserRepository> configUserRepo() async {
  final sharedPersistent = await _configSharedPersistent();
  return UserRepositoryImpl(sharedPersistent);
}

Future<
    (
      RawDataChannelProvider,
      ChannelStateWatcher,
      Runnable,
      Pausable,
      Resumable,
    )> configRawDataChannel({
  required final String ipClients,
  required final String portClients,
  required final Crypto cryptoClients,
  final bool useLogging = false,
}) async {
  final iotServiceConnector = await _configWebSocketChannel(
    ip: ipClients,
    port: portClients,
    useLogging: useLogging,
  );
  return (
    CryptoChannelProvider(
      rawDataChannelProvider: iotServiceConnector,
      crypto: cryptoClients,
    ),
    iotServiceConnector,
    iotServiceConnector,
    iotServiceConnector,
    iotServiceConnector,
  );
}

Future<WebSocketChannelProvider> _configWebSocketChannel({
  required final String ip,
  required final String port,
  final bool useLogging = false,
}) async =>
    WebSocketChannelProvider(
      ip: ip,
      port: port,
      useLogging: useLogging,
      connectionOptions: const SocketConnectionOptions(
        pingIntervalMs: 5000,
        timeoutConnectionMs: 4000,

        /// see ping/pong messages in [logEventStream] stream
        skipPingMessages: false,

        /// Set this attribute to `true` if do not need any ping/pong
        /// messages and ping measurement. Default is `false`
        pingRestrictionForce: false,
        failedReconnectionAttemptsLimit: null,
        maxReconnectionAttemptsPerMinute: null,
      ),
      textSocketProcessor: SocketSimpleTextProcessor(),
    );
