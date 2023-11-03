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
    required TResult Function(CommonError err) innerClientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(Client client)? innerClientUpdate,
    TResult? Function(CommonError err)? innerClientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Client client)? innerClientUpdate,
    TResult Function(CommonError err)? innerClientError,
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
abstract class _$$StartAuthImplCopyWith<$Res> {
  factory _$$StartAuthImplCopyWith(
          _$StartAuthImpl value, $Res Function(_$StartAuthImpl) then) =
      __$$StartAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartAuthImpl>
    implements _$$StartAuthImplCopyWith<$Res> {
  __$$StartAuthImplCopyWithImpl(
      _$StartAuthImpl _value, $Res Function(_$StartAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartAuthImpl implements StartAuth {
  const _$StartAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Client client) innerClientUpdate,
    required TResult Function(CommonError err) innerClientError,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(Client client)? innerClientUpdate,
    TResult? Function(CommonError err)? innerClientError,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Client client)? innerClientUpdate,
    TResult Function(CommonError err)? innerClientError,
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
  const factory StartAuth() = _$StartAuthImpl;
}

/// @nodoc
abstract class _$$InnerClientUpdateImplCopyWith<$Res> {
  factory _$$InnerClientUpdateImplCopyWith(_$InnerClientUpdateImpl value,
          $Res Function(_$InnerClientUpdateImpl) then) =
      __$$InnerClientUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Client client});
}

/// @nodoc
class __$$InnerClientUpdateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InnerClientUpdateImpl>
    implements _$$InnerClientUpdateImplCopyWith<$Res> {
  __$$InnerClientUpdateImplCopyWithImpl(_$InnerClientUpdateImpl _value,
      $Res Function(_$InnerClientUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$InnerClientUpdateImpl(
      null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }
}

/// @nodoc

class _$InnerClientUpdateImpl implements InnerClientUpdate {
  const _$InnerClientUpdateImpl(this.client);

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
            other is _$InnerClientUpdateImpl &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerClientUpdateImplCopyWith<_$InnerClientUpdateImpl> get copyWith =>
      __$$InnerClientUpdateImplCopyWithImpl<_$InnerClientUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Client client) innerClientUpdate,
    required TResult Function(CommonError err) innerClientError,
  }) {
    return innerClientUpdate(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(Client client)? innerClientUpdate,
    TResult? Function(CommonError err)? innerClientError,
  }) {
    return innerClientUpdate?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Client client)? innerClientUpdate,
    TResult Function(CommonError err)? innerClientError,
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
  const factory InnerClientUpdate(final Client client) =
      _$InnerClientUpdateImpl;

  Client get client;
  @JsonKey(ignore: true)
  _$$InnerClientUpdateImplCopyWith<_$InnerClientUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InnerClientErrorImplCopyWith<$Res> {
  factory _$$InnerClientErrorImplCopyWith(_$InnerClientErrorImpl value,
          $Res Function(_$InnerClientErrorImpl) then) =
      __$$InnerClientErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonError err});
}

/// @nodoc
class __$$InnerClientErrorImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InnerClientErrorImpl>
    implements _$$InnerClientErrorImplCopyWith<$Res> {
  __$$InnerClientErrorImplCopyWithImpl(_$InnerClientErrorImpl _value,
      $Res Function(_$InnerClientErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$InnerClientErrorImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as CommonError,
    ));
  }
}

/// @nodoc

class _$InnerClientErrorImpl implements InnerClientError {
  const _$InnerClientErrorImpl(this.err);

  @override
  final CommonError err;

  @override
  String toString() {
    return 'AuthEvent.innerClientError(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerClientErrorImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerClientErrorImplCopyWith<_$InnerClientErrorImpl> get copyWith =>
      __$$InnerClientErrorImplCopyWithImpl<_$InnerClientErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Client client) innerClientUpdate,
    required TResult Function(CommonError err) innerClientError,
  }) {
    return innerClientError(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(Client client)? innerClientUpdate,
    TResult? Function(CommonError err)? innerClientError,
  }) {
    return innerClientError?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Client client)? innerClientUpdate,
    TResult Function(CommonError err)? innerClientError,
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
  const factory InnerClientError(final CommonError err) =
      _$InnerClientErrorImpl;

  CommonError get err;
  @JsonKey(ignore: true)
  _$$InnerClientErrorImplCopyWith<_$InnerClientErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(CommonError err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(CommonError err)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(CommonError err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuth value) initial,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(ErrorAuth value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorAuth value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorAuth value)? error,
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
abstract class _$$InitialAuthImplCopyWith<$Res> {
  factory _$$InitialAuthImplCopyWith(
          _$InitialAuthImpl value, $Res Function(_$InitialAuthImpl) then) =
      __$$InitialAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialAuthImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialAuthImpl>
    implements _$$InitialAuthImplCopyWith<$Res> {
  __$$InitialAuthImplCopyWithImpl(
      _$InitialAuthImpl _value, $Res Function(_$InitialAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialAuthImpl implements InitialAuth {
  const _$InitialAuthImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(CommonError err) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(CommonError err)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(CommonError err)? error,
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
    required TResult Function(ErrorAuth value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorAuth value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorAuth value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAuth implements AuthState {
  const factory InitialAuth() = _$InitialAuthImpl;
}

/// @nodoc
abstract class _$$LoadingAuthImplCopyWith<$Res> {
  factory _$$LoadingAuthImplCopyWith(
          _$LoadingAuthImpl value, $Res Function(_$LoadingAuthImpl) then) =
      __$$LoadingAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAuthImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingAuthImpl>
    implements _$$LoadingAuthImplCopyWith<$Res> {
  __$$LoadingAuthImplCopyWithImpl(
      _$LoadingAuthImpl _value, $Res Function(_$LoadingAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAuthImpl implements LoadingAuth {
  const _$LoadingAuthImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(CommonError err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(CommonError err)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(CommonError err)? error,
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
    required TResult Function(ErrorAuth value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorAuth value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorAuth value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAuth implements AuthState {
  const factory LoadingAuth() = _$LoadingAuthImpl;
}

/// @nodoc
abstract class _$$SuccessAuthImplCopyWith<$Res> {
  factory _$$SuccessAuthImplCopyWith(
          _$SuccessAuthImpl value, $Res Function(_$SuccessAuthImpl) then) =
      __$$SuccessAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessAuthImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessAuthImpl>
    implements _$$SuccessAuthImplCopyWith<$Res> {
  __$$SuccessAuthImplCopyWithImpl(
      _$SuccessAuthImpl _value, $Res Function(_$SuccessAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessAuthImpl implements SuccessAuth {
  const _$SuccessAuthImpl();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(CommonError err) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(CommonError err)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(CommonError err)? error,
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
    required TResult Function(ErrorAuth value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorAuth value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorAuth value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessAuth implements AuthState {
  const factory SuccessAuth() = _$SuccessAuthImpl;
}

/// @nodoc
abstract class _$$ErrorAuthImplCopyWith<$Res> {
  factory _$$ErrorAuthImplCopyWith(
          _$ErrorAuthImpl value, $Res Function(_$ErrorAuthImpl) then) =
      __$$ErrorAuthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonError err});
}

/// @nodoc
class __$$ErrorAuthImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorAuthImpl>
    implements _$$ErrorAuthImplCopyWith<$Res> {
  __$$ErrorAuthImplCopyWithImpl(
      _$ErrorAuthImpl _value, $Res Function(_$ErrorAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$ErrorAuthImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as CommonError,
    ));
  }
}

/// @nodoc

class _$ErrorAuthImpl implements ErrorAuth {
  const _$ErrorAuthImpl(this.err);

  @override
  final CommonError err;

  @override
  String toString() {
    return 'AuthState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAuthImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAuthImplCopyWith<_$ErrorAuthImpl> get copyWith =>
      __$$ErrorAuthImplCopyWithImpl<_$ErrorAuthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(CommonError err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(CommonError err)? error,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(CommonError err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuth value) initial,
    required TResult Function(LoadingAuth value) loading,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(ErrorAuth value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuth value)? initial,
    TResult? Function(LoadingAuth value)? loading,
    TResult? Function(SuccessAuth value)? success,
    TResult? Function(ErrorAuth value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuth value)? initial,
    TResult Function(LoadingAuth value)? loading,
    TResult Function(SuccessAuth value)? success,
    TResult Function(ErrorAuth value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAuth implements AuthState {
  const factory ErrorAuth(final CommonError err) = _$ErrorAuthImpl;

  CommonError get err;
  @JsonKey(ignore: true)
  _$$ErrorAuthImplCopyWith<_$ErrorAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
