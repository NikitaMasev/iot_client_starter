import 'package:iot_client_starter/data/sources/iot_provider/base/channel_data_sender.dart';
import 'package:iot_client_starter/data/sources/iot_provider/base/channel_data_watcher.dart';

abstract interface class RawDataChannelProvider
    implements ChannelDataSender<String>, ChannelDataWatcher<String> {}
