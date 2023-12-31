import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_client_starter/data/repositories/iot_data/client_repository.dart';
import 'package:iot_client_starter/data/repositories/iot_data/iot_state_repository.dart';
import 'package:iot_client_starter/data/repositories/models/iot_state.dart';
import 'package:iot_client_starter/data/repositories/user/user_repository.dart';
import 'package:iot_client_starter/internal/errors/common_errors.dart';
import 'package:iot_models/iot_models.dart';

part 'auth_bloc.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.start() = StartAuth;

  const factory AuthEvent.innerClientUpdate(
    final Client client,
  ) = InnerClientUpdate;

  const factory AuthEvent.innerClientError(
    final CommonError err,
  ) = InnerClientError;
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = InitialAuth;

  const factory AuthState.loading() = LoadingAuth;

  const factory AuthState.success() = SuccessAuth;

  const factory AuthState.error(final CommonError err) = ErrorAuth;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.userRepository,
    required this.iotStateRepository,
    required this.clientRepository,
    required this.name,
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
  final IotStateRepository iotStateRepository;
  final ClientRepository clientRepository;
  final String name;
  StreamSubscription? _subClient;
  StreamSubscription? _subIotState;

  Future<void> _start(
    final Emitter<AuthState> emit,
  ) async {
    if (_subClient != null) {
      return;
    }

    emit(const AuthState.loading());

    await _subscribeClient();
    await _subscribeChannelState();

    final lastChannelState = await iotStateRepository.lastState();

    if (lastChannelState is IotReady) {
      await _authOrRegister();
    }
  }

  Future<void> _innerClientError(
    final CommonError err,
    final Emitter<AuthState> emit,
  ) async {
    emit(AuthState.error(err));
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
      clientRepository.sendClient(fullClient);
    }
  }

  Future<void> _subscribeClient() async {
    _subClient = clientRepository.watchClientModel().listen(
          (final client) => add(
            AuthEvent.innerClientUpdate(client),
          ),
          onError: (final err) => add(
            AuthEvent.innerClientError(ErrorUnknown()..stackTrace = err),
          ),
        );
  }

  Future<void> _subscribeChannelState() async {
    _subIotState = iotStateRepository.watchState().listen((final iotState) {
      switch (iotState) {
        case IotLoading():
          break;
        case IotDisconnected():
          add(AuthEvent.innerClientError(ErrorConnecting()));
          break;
        case IotError(error: final iotError):
          add(
            AuthEvent.innerClientError(
              ErrorConnectionInterrupted()..stackTrace = iotError,
            ),
          );
          break;
        case IotReady():
          _authOrRegister();
          break;
      }
    });
  }

  Future<void> _authOrRegister() async {
    final client = await userRepository.getClient();

    ///register process
    if (client == null) {
      clientRepository.sendClient(Client(name: name));
    } else {
      ///auth process
      clientRepository.sendClient(client);
    }
  }

  @override
  Future<void> close() async {
    await _subClient?.cancel();
    await _subIotState?.cancel();
    return super.close();
  }
}
