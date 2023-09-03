import 'package:iot_client_starter/data/repositories/user_repository_impl.dart';
import 'package:iot_client_starter/data/sources/shared_persistent_impl.dart';
import 'package:iot_client_starter/iot_client_starter.dart';
import 'package:iot_client_starter/services/iot_communicator/iot_communicator_service_impl.dart';
import 'package:iot_client_starter/services/iot_connector/iot_service_connector.dart';
import 'package:iot_client_starter/services/iot_connector/iot_service_crypto_connector.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:iot_models/iot_models.dart';

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
  final iotChannelProvider = IotServiceConnector(
    ip: ipClients,
    port: portClients,
  )..run();
  return (
    IotServiceCryptoConnector(
      iotChannelProvider: iotChannelProvider,
      crypto: cryptoClients,
    ),
    iotChannelProvider
  );
}
