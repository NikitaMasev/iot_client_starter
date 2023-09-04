import 'package:iot_client_starter/data/repositories/user_repository_impl.dart';
import 'package:iot_client_starter/data/sources/shared_persistent_impl.dart';
import 'package:iot_client_starter/iot_client_starter.dart';
import 'package:iot_client_starter/services/iot_communicator/iot_communicator_service_impl.dart';
import 'package:iot_client_starter/services/iot_connector/iot_service_connector.dart';
import 'package:iot_client_starter/services/iot_connector/iot_service_crypto_connector.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:iot_models/iot_models.dart';
import 'package:websocket_universal/websocket_universal.dart';

Future<IotCommunicatorService> configCommunicator(
  final IotChannelProvider iotChannelProvider,
) async =>
    IotCommunicatorServiceImpl(
      iotChannelProvider: iotChannelProvider,
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

Future<(IotChannelProvider, ChannelStateWatcher)> configChannelProvider({
  required final String ipClients,
  required final String portClients,
  required final Crypto cryptoClients,
}) async {
  final iotServiceConnector = await _configIotServiceConnector(
    ip: ipClients,
    port: portClients,
  )..run();
  return (
    IotServiceCryptoConnector(
      iotChannelProvider: iotServiceConnector,
      crypto: cryptoClients,
    ),
    iotServiceConnector
  );
}

Future<IotServiceConnector> _configIotServiceConnector({
  required final String ip,
  required final String port,
}) async =>
    IotServiceConnector(
      ip: ip,
      port: port,
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
