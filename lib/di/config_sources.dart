import 'package:iot_client_starter/data/repositories/iot_data/iot_data_repository_impl.dart';
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

Future<SharedPersistent> _configSharedPersistent() async =>
    SharedPersistentImpl();

Future<UserRepository> configUserRepo() async {
  final sharedPersistent = await _configSharedPersistent();
  return UserRepositoryImpl(sharedPersistent);
}

Future<
    (
      ClientRepository,
      DevicesRepository,
      IotStateRepository,
      Pausable,
      Resumable
    )> configIotDataRepo({
  required final String ipLocal,
  required final String portLocal,
  required final String ipRemote,
  required final String portRemote,
  required final Crypto cryptoClients,
  final bool useLogging = false,
}) async {
  final (
    localRawDataChannelProvider,
    localChannelStateWatcher,
    localRunnable,
    localPausable,
    localResumable,
  ) = await _configRawDataChannel(
    ipClients: ipLocal,
    portClients: portLocal,
    cryptoClients: cryptoClients,
    useLogging: useLogging,
  );
  final (
    remoteRawDataChannelProvider,
    remoteChannelStateWatcher,
    remoteRunnable,
    remotePausable,
    remoteResumable,
  ) = await _configRawDataChannel(
    ipClients: ipRemote,
    portClients: portRemote,
    cryptoClients: cryptoClients,
    useLogging: useLogging,
  );
  final localChannelDataProvider = await _configChannelData(
    localRawDataChannelProvider,
  );
  final remoteChannelDataProvider = await _configChannelData(
    remoteRawDataChannelProvider,
  );
  final iotDataRepo = IotDataRepositoryImpl(
    localChannelDataProvider: localChannelDataProvider,
    remoteChannelDataProvider: remoteChannelDataProvider,
    localChannelStateWatcher: localChannelStateWatcher,
    remoteChannelStateWatcher: remoteChannelStateWatcher,
    localRunnable: localRunnable,
    remoteRunnable: remoteRunnable,
    localPausable: localPausable,
    remotePausable: remotePausable,
    localResumable: localResumable,
    remoteResumable: remoteResumable,
    useLogging: useLogging,
  );
  return (
    iotDataRepo,
    iotDataRepo,
    iotDataRepo,
    iotDataRepo,
    iotDataRepo,
  );
}

Future<ChannelDataProvider> _configChannelData(
  final RawDataChannelProvider rawDataChannelProvider,
) async =>
    IotChannelDataProvider(
      rawDataChannelProvider: rawDataChannelProvider,
      communicatorSignDecoder: const CommunicatorSignDecoderImpl(),
      iotDevicesCodec: const IotDevicesCodecImpl(),
      clientCodec: const ClientCodecImpl(),
    );

Future<
    (
      RawDataChannelProvider,
      ChannelStateWatcher,
      Runnable,
      Pausable,
      Resumable,
    )> _configRawDataChannel({
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
        pingIntervalMs: 1000,
        timeoutConnectionMs: 1000,

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
