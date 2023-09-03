import 'package:iot_client_starter/iot_client_starter.dart';

Future<AuthBloc> configAuthBloc({
  required final IotCommunicatorService iotCommunicatorService,
  required final ChannelStateWatcher channelStateWatcher,
  required final String nameDevice,
}) async {
  final userRepository = await configUserRepo();
  return AuthBloc(
    userRepository: userRepository,
    iotCommunicatorService: iotCommunicatorService,
    name: nameDevice,
    channelStateWatcher: channelStateWatcher,
  );
}

Future<IotDevicesBloc> configIotDevicesBloc(
  final IotCommunicatorService iotCommunicatorService,
) async =>
    IotDevicesBloc(iotCommunicatorService);
