import 'package:iot_client_starter/di/config_sources.dart';
import 'package:iot_client_starter/domain/auth/auth_bloc.dart';
import 'package:iot_client_starter/domain/iot_devices/iot_devices_bloc.dart';
import 'package:iot_client_starter/services/iot_communicator/iot_communicator_service.dart';

Future<AuthBloc> configAuthBloc(
  final IotCommunicatorService iotCommunicatorService,
  final String nameDevice,
) async {
  final userRepository = await configUserRepo();
  return AuthBloc(
    userRepository: userRepository,
    iotCommunicatorService: iotCommunicatorService,
    name: nameDevice,
  );
}

Future<IotDevicesBloc> configIotDevicesBloc(
  final IotCommunicatorService iotCommunicatorService,
) async =>
    IotDevicesBloc(iotCommunicatorService);
