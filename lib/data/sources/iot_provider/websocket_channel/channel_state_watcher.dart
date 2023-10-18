import 'package:iot_client_starter/data/sources/iot_provider/base/state_watcher.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/channel_state.dart';

abstract interface class ChannelStateWatcher
    implements StateWatcher<ChannelState> {}
