sealed class IotState {}

class IotLoading extends IotState {}

class IotDisconnected extends IotState {}

class IotError extends IotState {
  IotError({required this.error});

  final String error;
}
class IotReady extends IotState {}
