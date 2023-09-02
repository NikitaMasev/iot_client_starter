// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Client client) innerClientUpdate,
    required TResult Function(Object err) innerClientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(Client client)? innerClientUpdate,
    TResult? Function(Object err)? innerClientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Client client)? innerClientUpdate,
    TResult Function(Object err)? innerClientError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartAuth value) start,
    required TResult Function(InnerClientUpdate value) innerClientUpdate,
    required TResult Function(InnerClientError value) innerClientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartAuth value)? start,
    TResult? Function(InnerClientUpdate value)? innerClientUpdate,
    TResult? Function(InnerClientError value)? innerClientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartAuth value)? start,
    TResult Function(InnerClientUpdate value)? innerClientUpdate,
    TResult Function(InnerClientError value)? innerClientError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartAuthCopyWith<$Res> {
  factory _$$StartAuthCopyWith(
          _$StartAuth value, $Res Function(_$StartAuth) then) =
      __$$StartAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartAuth>
    implements _$$StartAuthCopyWith<$Res> {
  __$$StartAuthCopyWithImpl(
      _$StartAuth _value, $Res Function(_$StartAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartAuth implements StartAuth {
  const _$StartAuth();

  @override
  String toString() {
    return 'AuthEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Client client) innerClientUpdate,
    required TResult Function(Object err) innerClientError,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(Client client)? innerClientUpdate,
    TResult? Function(Object err)? innerClientError,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Client client)? innerClientUpdate,
    TResult Function(Object err)? innerClientError,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartAuth value) start,
    required TResult Function(InnerClientUpdate value) innerClientUpdate,
    required TResult Function(InnerClientError value) innerClientError,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartAuth value)? start,
    TResult? Function(InnerClientUpdate value)? innerClientUpdate,
    TResult? Function(InnerClientError value)? innerClientError,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartAuth value)? start,
    TResult Function(InnerClientUpdate value)? innerClientUpdate,
    TResult Function(InnerClientError value)? innerClientError,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StartAuth implements AuthEvent {
  const factory StartAuth() = _$StartAuth;
}

/// @nodoc
abstract class _$$InnerClientUpdateCopyWith<$Res> {
  factory _$$InnerClientUpdateCopyWith(
          _$InnerClientUpdate value, $Res Function(_$InnerClientUpdate) then) =
      __$$InnerClientUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({Client client});
}

/// @nodoc
class __$$InnerClientUpdateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InnerClientUpdate>
    implements _$$InnerClientUpdateCopyWith<$Res> {
  __$$InnerClientUpdateCopyWithImpl(
      _$InnerClientUpdate _value, $Res Function(_$InnerClientUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$InnerClientUpdate(
      null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }
}

/// @nodoc

class _$InnerClientUpdate implements InnerClientUpdate {
  const _$InnerClientUpdate(this.client);

  @override
  final Client client;

  @override
  String toString() {
    return 'AuthEvent.innerClientUpdate(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerClientUpdate &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerClientUpdateCopyWith<_$InnerClientUpdate> get copyWith =>
      __$$InnerClientUpdateCopyWithImpl<_$InnerClientUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Client client) innerClientUpdate,
    required TResult Function(Object err) innerClientError,
  }) {
    return innerClientUpdate(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(Client client)? innerClientUpdate,
    TResult? Function(Object err)? innerClientError,
  }) {
    return innerClientUpdate?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Client client)? innerClientUpdate,
    TResult Function(Object err)? innerClientError,
    required TResult orElse(),
  }) {
    if (innerClientUpdate != null) {
      return innerClientUpdate(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartAuth value) start,
    required TResult Function(InnerClientUpdate value) innerClientUpdate,
    required TResult Function(InnerClientError value) innerClientError,
  }) {
    return innerClientUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartAuth value)? start,
    TResult? Function(InnerClientUpdate value)? innerClientUpdate,
    TResult? Function(InnerClientError value)? innerClientError,
  }) {
    return innerClientUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartAuth value)? start,
    TResult Function(InnerClientUpdate value)? innerClientUpdate,
    TResult Function(InnerClientError value)? innerClientError,
    required TResult orElse(),
  }) {
    if (innerClientUpdate != null) {
      return innerClientUpdate(this);
    }
    return orElse();
  }
}

abstract class InnerClientUpdate implements AuthEvent {
  const factory InnerClientUpdate(final Client client) = _$InnerClientUpdate;

  Client get client;
  @JsonKey(ignore: true)
  _$$InnerClientUpdateCopyWith<_$InnerClientUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InnerClientErrorCopyWith<$Res> {
  factory _$$InnerClientErrorCopyWith(
          _$InnerClientError value, $Res Function(_$InnerClientError) then) =
      __$$InnerClientErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object err});
}

/// @nodoc
class __$$InnerClientErrorCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InnerClientError>
    implements _$$InnerClientErrorCopyWith<$Res> {
  __$$InnerClientErrorCopyWithImpl(
      _$InnerClientError _value, $Res Function(_$InnerClientError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$InnerClientError(
      null == err ? _value.err : err,
    ));
  }
}

/// @nodoc

class _$InnerClientError implements InnerClientError {
  const _$InnerClientError(this.err);

  @override
  final Object err;

  @override
  String toString() {
    return 'AuthEvent.innerClientError(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerClientError &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerClientErrorCopyWith<_$InnerClientError> get copyWith =>
      __$$InnerClientErrorCopyWithImpl<_$InnerClientError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Client client) innerClientUpdate,
    required TResult Function(Object err) innerClientError,
  }) {
    return innerClientError(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(Client client)? innerClientUpdate,
    TResult? Function(Object err)? innerClientError,
  }) {
    return innerClientError?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Client client)? innerClientUpdate,
    TResult Function(Object err)? innerClientError,
    required TResult orElse(),
  }) {
    if (innerClientError != null) {
      return innerClientError(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartAuth value) start,
    required TResult Function(InnerClientUpdate value) innerClientUpdate,
    required TResult Function(InnerClientError value) innerClientError,
  }) {
    return innerClientError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartAuth value)? start,
    TResult? Function(InnerClientUpdate value)? innerClientUpdate,
    TResult? Function(InnerClientError value)? innerClientError,
  }) {
    return innerClientError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartAuth value)? start,
    TResult Function(InnerClientUpdate value)? innerClientUpdate,
    TResult Function(InnerClientError value)? innerClientError,
    required TResult orElse(),
  }) {
    if (innerClientError != null) {
      return innerClientError(this);
    }
    return orElse();
  }
}

abstract class InnerClientError implements AuthEvent {
  const factory InnerClientError(final Object err) = _$InnerClientError;

  Object get err;
  @JsonKey(ignore: true)
  _$$InnerClientErrorCopyWith<_$InnerClientError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? errorConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuth value) initial,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(ErrorConnectionAuth value) errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorConnectionAuth value)? errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorConnectionAuth value)? errorConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialAuthCopyWith<$Res> {
  factory _$$InitialAuthCopyWith(
          _$InitialAuth value, $Res Function(_$InitialAuth) then) =
      __$$InitialAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialAuthCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialAuth>
    implements _$$InitialAuthCopyWith<$Res> {
  __$$InitialAuthCopyWithImpl(
      _$InitialAuth _value, $Res Function(_$InitialAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialAuth implements InitialAuth {
  const _$InitialAuth();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() errorConnection,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? errorConnection,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? errorConnection,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuth value) initial,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(ErrorConnectionAuth value) errorConnection,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorConnectionAuth value)? errorConnection,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorConnectionAuth value)? errorConnection,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAuth implements AuthState {
  const factory InitialAuth() = _$InitialAuth;
}

/// @nodoc
abstract class _$$LoadingAuthCopyWith<$Res> {
  factory _$$LoadingAuthCopyWith(
          _$LoadingAuth value, $Res Function(_$LoadingAuth) then) =
      __$$LoadingAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAuthCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingAuth>
    implements _$$LoadingAuthCopyWith<$Res> {
  __$$LoadingAuthCopyWithImpl(
      _$LoadingAuth _value, $Res Function(_$LoadingAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAuth implements LoadingAuth {
  const _$LoadingAuth();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() errorConnection,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? errorConnection,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? errorConnection,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuth value) initial,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(ErrorConnectionAuth value) errorConnection,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorConnectionAuth value)? errorConnection,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorConnectionAuth value)? errorConnection,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAuth implements AuthState {
  const factory LoadingAuth() = _$LoadingAuth;
}

/// @nodoc
abstract class _$$SuccessAuthCopyWith<$Res> {
  factory _$$SuccessAuthCopyWith(
          _$SuccessAuth value, $Res Function(_$SuccessAuth) then) =
      __$$SuccessAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessAuthCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessAuth>
    implements _$$SuccessAuthCopyWith<$Res> {
  __$$SuccessAuthCopyWithImpl(
      _$SuccessAuth _value, $Res Function(_$SuccessAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessAuth implements SuccessAuth {
  const _$SuccessAuth();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() errorConnection,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? errorConnection,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? errorConnection,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuth value) initial,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(ErrorConnectionAuth value) errorConnection,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorConnectionAuth value)? errorConnection,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorConnectionAuth value)? errorConnection,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessAuth implements AuthState {
  const factory SuccessAuth() = _$SuccessAuth;
}

/// @nodoc
abstract class _$$ErrorConnectionAuthCopyWith<$Res> {
  factory _$$ErrorConnectionAuthCopyWith(_$ErrorConnectionAuth value,
          $Res Function(_$ErrorConnectionAuth) then) =
      __$$ErrorConnectionAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorConnectionAuthCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorConnectionAuth>
    implements _$$ErrorConnectionAuthCopyWith<$Res> {
  __$$ErrorConnectionAuthCopyWithImpl(
      _$ErrorConnectionAuth _value, $Res Function(_$ErrorConnectionAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorConnectionAuth implements ErrorConnectionAuth {
  const _$ErrorConnectionAuth();

  @override
  String toString() {
    return 'AuthState.errorConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorConnectionAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() errorConnection,
  }) {
    return errorConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? errorConnection,
  }) {
    return errorConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? errorConnection,
    required TResult orElse(),
  }) {
    if (errorConnection != null) {
      return errorConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuth value) initial,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(ErrorConnectionAuth value) errorConnection,
  }) {
    return errorConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorConnectionAuth value)? errorConnection,
  }) {
    return errorConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorConnectionAuth value)? errorConnection,
    required TResult orElse(),
  }) {
    if (errorConnection != null) {
      return errorConnection(this);
    }
    return orElse();
  }
}

abstract class ErrorConnectionAuth implements AuthState {
  const factory ErrorConnectionAuth() = _$ErrorConnectionAuth;
}
