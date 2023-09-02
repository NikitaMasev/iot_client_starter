import 'package:iot_models/iot_models.dart';

abstract class IotCommunicatorService {
  void sendClient(final Client client);

  Stream<Client> watchClientModel();

  Stream<IotDevicesDataWrapper> watchIotDevicesModel();
}
