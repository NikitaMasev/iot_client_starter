import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_client_starter/data/repositories/user_repository.dart';
import 'package:iot_client_starter/services/iot_communicator/iot_communicator_service.dart';
import 'package:iot_models/iot_models.dart';

part 'auth_bloc.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.start() = StartAuth;

  const factory AuthEvent.innerClientUpdate(
    final Client client,
  ) = InnerClientUpdate;

  const factory AuthEvent.innerClientError(
    final Object err,
  ) = InnerClientError;
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = InitialAuth;

  const factory AuthState.loading() = LoadingAuth;

  const factory AuthState.success() = SuccessAuth;

  const factory AuthState.errorConnection() = ErrorConnectionAuth;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required final this.userRepository,
    required final this.iotCommunicatorService,
    required final this.name,
  }) : super(const InitialAuth()) {
    on<AuthEvent>(
      (final event, final emit) => event.when(
        start: () => _start(emit),
        innerClientUpdate: (final client) => _innerClientUpdate(
          client,
          emit,
        ),
        innerClientError: (final err) => _innerClientError(
          err,
          emit,
        ),
      ),
    );
  }

  final UserRepository userRepository;
  final IotCommunicatorService iotCommunicatorService;
  final String name;
  StreamSubscription? _subClient;

  Future<void> _start(
    final Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    await _subscribeClient();

    final client = await userRepository.getClient();

    ///register process
    if (client == null) {
      iotCommunicatorService.sendClient(Client(name: name));
    } else {
      ///auth process
      iotCommunicatorService.sendClient(client);
    }
  }

  Future<void> _innerClientError(
    final Object err,
    final Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.errorConnection());
  }

  Future<void> _innerClientUpdate(
    final Client client,
    final Emitter<AuthState> emit,
  ) async {
    ///auth process success
    if (client.id != null && client.name != null) {
      emit(const AuthState.success());
    } else if (client.id != null) {
      ///register process success
      final fullClient = Client(id: client.id, name: name);

      await userRepository.saveClient(fullClient);

      ///auth process
      iotCommunicatorService.sendClient(fullClient);
    }
  }

  Future<void> _subscribeClient() async {
    if (_subClient != null) {
      return;
    }
    _subClient = iotCommunicatorService.watchClientModel().listen(
          (final client) => add(
            AuthEvent.innerClientUpdate(client),
          ),
          onError: (final err) => add(
            AuthEvent.innerClientError(err as Object),
          ),
        );
  }

  @override
  Future<void> close() async {
    await _subClient?.cancel();
    return super.close();
  }
}
