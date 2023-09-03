import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_client_starter/data/repositories/user_repository.dart';
import 'package:iot_client_starter/models/channel_state.dart';
import 'package:iot_client_starter/services/iot_communicator/iot_communicator_service.dart';
import 'package:iot_client_starter/services/iot_connector/channel_state_watcher.dart';
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
    required this.userRepository,
    required this.iotCommunicatorService,
    required this.name,
    required this.channelStateWatcher,
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
  final ChannelStateWatcher channelStateWatcher;
  final String name;
  StreamSubscription? _subClient;
  StreamSubscription? _subChannelState;

  Future<void> _start(
    final Emitter<AuthState> emit,
  ) async {
    if (_subClient != null) {
      return;
    }

    emit(const AuthState.loading());

    await _subscribeClient();
    await _subscribeChannelState();
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
    _subClient = iotCommunicatorService.watchClientModel().listen(
          (final client) => add(
            AuthEvent.innerClientUpdate(client),
          ),
          onError: (final err) => add(
            AuthEvent.innerClientError(err as Object),
          ),
        );
  }

  Future<void> _subscribeChannelState() async {
    _subChannelState =
        channelStateWatcher.watchState().listen((final channelState) {
      switch (channelState) {
        case ChannelInitial():
          break;
        case ChannelLoading():
          break;
        case ChannelError():
          add(AuthEvent.innerClientError(channelState));
          break;
        case ChannelReady():
          userRepository.getClient().then((final client) {
            ///register process
            if (client == null) {
              iotCommunicatorService.sendClient(Client(name: name));
            } else {
              ///auth process
              iotCommunicatorService.sendClient(client);
            }
          });
          break;
      }
    });
  }

  @override
  Future<void> close() async {
    await _subClient?.cancel();
    await _subChannelState?.cancel();
    return super.close();
  }
}
