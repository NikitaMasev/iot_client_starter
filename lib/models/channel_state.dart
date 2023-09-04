sealed class ChannelState {}

class ChannelInitial extends ChannelState {}

class ChannelLoading extends ChannelState {}

class ChannelDisconnected extends ChannelState {}

class ChannelError extends ChannelState {
  ChannelError({required this.error});

  final String error;
}
class ChannelReady extends ChannelState {}
