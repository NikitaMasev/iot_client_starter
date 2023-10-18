import 'package:iot_models/iot_models.dart';

abstract interface class DevicesRepository {
  Stream<IotDevicesDataWrapper> watchIotDevicesModel();
}
