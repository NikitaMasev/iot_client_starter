import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_client_starter/data/repositories/iot_data/client_repository.dart';
import 'package:iot_client_starter/data/repositories/iot_data/devices_repository.dart';
import 'package:iot_models/iot_models.dart';

part 'iot_devices_bloc.freezed.dart';

@freezed
abstract class IotDevicesEvent with _$IotDevicesEvent {
  const factory IotDevicesEvent.start() = Start;

  const factory IotDevicesEvent.controlDevice(
    final ControlData controlData,
  ) = ControlDevice;

  const factory IotDevicesEvent.innerIotDevicesUpdate(
    final IotDevicesDataWrapper iotDevicesDataWrapper,
  ) = InnerIotDevicesUpdate;

  const factory IotDevicesEvent.innerIotDevicesError(
    final Object err,
  ) = InnerIotDevicesError;
}

@freezed
abstract class IotDevicesState with _$IotDevicesState {
  const factory IotDevicesState.initial() = Initial;

  const factory IotDevicesState.loading() = Loading;

  const factory IotDevicesState.update(
    final IotDevicesDataWrapper iotDevicesDataWrapper,
  ) = Update;

  const factory IotDevicesState.errorConnection() = ErrorConnection;

  const factory IotDevicesState.empty() = Empty;
}

class IotDevicesBloc extends Bloc<IotDevicesEvent, IotDevicesState> {
  IotDevicesBloc({
    required this.devicesRepository,
    required this.clientRepository,
  }) : super(const Initial()) {
    on<IotDevicesEvent>(
      (final event, final emit) => event.when(
        start: () => _start(emit),
        innerIotDevicesUpdate: (final iotDevicesDataWrapper) =>
            _innerIotDevicesUpdate(
          iotDevicesDataWrapper,
          emit,
        ),
        controlDevice: (final controlData) => _controlDevice(
          controlData,
          emit,
        ),
        innerIotDevicesError: (final err) => _innerIotDevicesError(
          err,
          emit,
        ),
      ),
    );
  }

  final DevicesRepository devicesRepository;
  final ClientRepository clientRepository;
  late final StreamSubscription _subIotDevices;

  Future<void> _start(
    final Emitter<IotDevicesState> emit,
  ) async {
    emit(const IotDevicesState.loading());

    _subIotDevices = devicesRepository.watchIotDevicesModel().listen(
          (final iotDevices) => add(
            IotDevicesEvent.innerIotDevicesUpdate(iotDevices),
          ),
          onError: (final err) => add(
            IotDevicesEvent.innerIotDevicesError(err as Object),
          ),
        );
  }

  Future<void> _innerIotDevicesError(
    final Object err,
    final Emitter<IotDevicesState> emit,
  ) async {
    await _subIotDevices.cancel();
    emit(const IotDevicesState.errorConnection());
  }

  Future<void> _innerIotDevicesUpdate(
    final IotDevicesDataWrapper iotDevicesDataWrapper,
    final Emitter<IotDevicesState> emit,
  ) async {
    if (iotDevicesDataWrapper.devices.isEmpty) {
      emit(const IotDevicesState.empty());
    } else {
      emit(IotDevicesState.update(iotDevicesDataWrapper));
    }
  }

  Future<void> _controlDevice(
    final ControlData controlData,
    final Emitter<IotDevicesState> emit,
  ) async {
    clientRepository.sendClient(Client(controlData: controlData));
  }

  @override
  Future<void> close() async {
    await _subIotDevices.cancel();
    return super.close();
  }
}
