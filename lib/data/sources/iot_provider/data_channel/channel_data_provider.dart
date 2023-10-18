import 'package:iot_client_starter/data/sources/iot_provider/base/channel_data_sender.dart';
import 'package:iot_client_starter/data/sources/iot_provider/base/channel_data_watcher.dart';
import 'package:iot_models/iot_models.dart';

abstract interface class ChannelDataProvider
    implements ChannelDataSender<Client>, ChannelDataWatcher<Client> {
  Stream<IotDevicesDataWrapper> watchIotDevicesModel();
}
