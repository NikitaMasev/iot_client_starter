import 'package:iot_client_starter/models/channel_state.dart';

abstract interface class ChannelStateWatcher {
  Stream<ChannelState> watchState();

  Future<ChannelState> lastState();
}
