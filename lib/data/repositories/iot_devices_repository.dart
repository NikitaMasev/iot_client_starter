import 'package:iot_models/iot_models.dart';

abstract interface class IotDevicesRepository {
  Stream<IotDevicesDataWrapper> watchIotDevicesModel();
}
