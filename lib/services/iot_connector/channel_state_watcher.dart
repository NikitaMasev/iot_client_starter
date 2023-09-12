import 'package:iot_client_starter/models/channel_state.dart';

abstract class ChannelStateWatcher {
  Stream<ChannelState> watchState();

  Future<ChannelState> lastState();
}
