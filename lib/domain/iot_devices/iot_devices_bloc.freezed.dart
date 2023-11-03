// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iot_devices_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IotDevicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(ControlData controlData) controlDevice,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        innerIotDevicesUpdate,
    required TResult Function(Object err) innerIotDevicesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(ControlData controlData)? controlDevice,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult? Function(Object err)? innerIotDevicesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(ControlData controlData)? controlDevice,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult Function(Object err)? innerIotDevicesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(ControlDevice value) controlDevice,
    required TResult Function(InnerIotDevicesUpdate value)
        innerIotDevicesUpdate,
    required TResult Function(InnerIotDevicesError value) innerIotDevicesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? start,
    TResult? Function(ControlDevice value)? controlDevice,
    TResult? Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult? Function(InnerIotDevicesError value)? innerIotDevicesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(ControlDevice value)? controlDevice,
    TResult Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult Function(InnerIotDevicesError value)? innerIotDevicesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IotDevicesEventCopyWith<$Res> {
  factory $IotDevicesEventCopyWith(
          IotDevicesEvent value, $Res Function(IotDevicesEvent) then) =
      _$IotDevicesEventCopyWithImpl<$Res, IotDevicesEvent>;
}

/// @nodoc
class _$IotDevicesEventCopyWithImpl<$Res, $Val extends IotDevicesEvent>
    implements $IotDevicesEventCopyWith<$Res> {
  _$IotDevicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
          _$StartImpl value, $Res Function(_$StartImpl) then) =
      __$$StartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$IotDevicesEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
      _$StartImpl _value, $Res Function(_$StartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartImpl implements Start {
  const _$StartImpl();

  @override
  String toString() {
    return 'IotDevicesEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(ControlData controlData) controlDevice,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        innerIotDevicesUpdate,
    required TResult Function(Object err) innerIotDevicesError,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(ControlData controlData)? controlDevice,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult? Function(Object err)? innerIotDevicesError,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(ControlData controlData)? controlDevice,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult Function(Object err)? innerIotDevicesError,
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
    required TResult Function(Start value) start,
    required TResult Function(ControlDevice value) controlDevice,
    required TResult Function(InnerIotDevicesUpdate value)
        innerIotDevicesUpdate,
    required TResult Function(InnerIotDevicesError value) innerIotDevicesError,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? start,
    TResult? Function(ControlDevice value)? controlDevice,
    TResult? Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult? Function(InnerIotDevicesError value)? innerIotDevicesError,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(ControlDevice value)? controlDevice,
    TResult Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult Function(InnerIotDevicesError value)? innerIotDevicesError,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class Start implements IotDevicesEvent {
  const factory Start() = _$StartImpl;
}

/// @nodoc
abstract class _$$ControlDeviceImplCopyWith<$Res> {
  factory _$$ControlDeviceImplCopyWith(
          _$ControlDeviceImpl value, $Res Function(_$ControlDeviceImpl) then) =
      __$$ControlDeviceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ControlData controlData});
}

/// @nodoc
class __$$ControlDeviceImplCopyWithImpl<$Res>
    extends _$IotDevicesEventCopyWithImpl<$Res, _$ControlDeviceImpl>
    implements _$$ControlDeviceImplCopyWith<$Res> {
  __$$ControlDeviceImplCopyWithImpl(
      _$ControlDeviceImpl _value, $Res Function(_$ControlDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlData = null,
  }) {
    return _then(_$ControlDeviceImpl(
      null == controlData
          ? _value.controlData
          : controlData // ignore: cast_nullable_to_non_nullable
              as ControlData,
    ));
  }
}

/// @nodoc

class _$ControlDeviceImpl implements ControlDevice {
  const _$ControlDeviceImpl(this.controlData);

  @override
  final ControlData controlData;

  @override
  String toString() {
    return 'IotDevicesEvent.controlDevice(controlData: $controlData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlDeviceImpl &&
            (identical(other.controlData, controlData) ||
                other.controlData == controlData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controlData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ControlDeviceImplCopyWith<_$ControlDeviceImpl> get copyWith =>
      __$$ControlDeviceImplCopyWithImpl<_$ControlDeviceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(ControlData controlData) controlDevice,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        innerIotDevicesUpdate,
    required TResult Function(Object err) innerIotDevicesError,
  }) {
    return controlDevice(controlData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(ControlData controlData)? controlDevice,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult? Function(Object err)? innerIotDevicesError,
  }) {
    return controlDevice?.call(controlData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(ControlData controlData)? controlDevice,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult Function(Object err)? innerIotDevicesError,
    required TResult orElse(),
  }) {
    if (controlDevice != null) {
      return controlDevice(controlData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(ControlDevice value) controlDevice,
    required TResult Function(InnerIotDevicesUpdate value)
        innerIotDevicesUpdate,
    required TResult Function(InnerIotDevicesError value) innerIotDevicesError,
  }) {
    return controlDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? start,
    TResult? Function(ControlDevice value)? controlDevice,
    TResult? Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult? Function(InnerIotDevicesError value)? innerIotDevicesError,
  }) {
    return controlDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(ControlDevice value)? controlDevice,
    TResult Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult Function(InnerIotDevicesError value)? innerIotDevicesError,
    required TResult orElse(),
  }) {
    if (controlDevice != null) {
      return controlDevice(this);
    }
    return orElse();
  }
}

abstract class ControlDevice implements IotDevicesEvent {
  const factory ControlDevice(final ControlData controlData) =
      _$ControlDeviceImpl;

  ControlData get controlData;
  @JsonKey(ignore: true)
  _$$ControlDeviceImplCopyWith<_$ControlDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InnerIotDevicesUpdateImplCopyWith<$Res> {
  factory _$$InnerIotDevicesUpdateImplCopyWith(
          _$InnerIotDevicesUpdateImpl value,
          $Res Function(_$InnerIotDevicesUpdateImpl) then) =
      __$$InnerIotDevicesUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IotDevicesDataWrapper iotDevicesDataWrapper});
}

/// @nodoc
class __$$InnerIotDevicesUpdateImplCopyWithImpl<$Res>
    extends _$IotDevicesEventCopyWithImpl<$Res, _$InnerIotDevicesUpdateImpl>
    implements _$$InnerIotDevicesUpdateImplCopyWith<$Res> {
  __$$InnerIotDevicesUpdateImplCopyWithImpl(_$InnerIotDevicesUpdateImpl _value,
      $Res Function(_$InnerIotDevicesUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iotDevicesDataWrapper = null,
  }) {
    return _then(_$InnerIotDevicesUpdateImpl(
      null == iotDevicesDataWrapper
          ? _value.iotDevicesDataWrapper
          : iotDevicesDataWrapper // ignore: cast_nullable_to_non_nullable
              as IotDevicesDataWrapper,
    ));
  }
}

/// @nodoc

class _$InnerIotDevicesUpdateImpl implements InnerIotDevicesUpdate {
  const _$InnerIotDevicesUpdateImpl(this.iotDevicesDataWrapper);

  @override
  final IotDevicesDataWrapper iotDevicesDataWrapper;

  @override
  String toString() {
    return 'IotDevicesEvent.innerIotDevicesUpdate(iotDevicesDataWrapper: $iotDevicesDataWrapper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerIotDevicesUpdateImpl &&
            (identical(other.iotDevicesDataWrapper, iotDevicesDataWrapper) ||
                other.iotDevicesDataWrapper == iotDevicesDataWrapper));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iotDevicesDataWrapper);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerIotDevicesUpdateImplCopyWith<_$InnerIotDevicesUpdateImpl>
      get copyWith => __$$InnerIotDevicesUpdateImplCopyWithImpl<
          _$InnerIotDevicesUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(ControlData controlData) controlDevice,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        innerIotDevicesUpdate,
    required TResult Function(Object err) innerIotDevicesError,
  }) {
    return innerIotDevicesUpdate(iotDevicesDataWrapper);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(ControlData controlData)? controlDevice,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult? Function(Object err)? innerIotDevicesError,
  }) {
    return innerIotDevicesUpdate?.call(iotDevicesDataWrapper);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(ControlData controlData)? controlDevice,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult Function(Object err)? innerIotDevicesError,
    required TResult orElse(),
  }) {
    if (innerIotDevicesUpdate != null) {
      return innerIotDevicesUpdate(iotDevicesDataWrapper);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(ControlDevice value) controlDevice,
    required TResult Function(InnerIotDevicesUpdate value)
        innerIotDevicesUpdate,
    required TResult Function(InnerIotDevicesError value) innerIotDevicesError,
  }) {
    return innerIotDevicesUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? start,
    TResult? Function(ControlDevice value)? controlDevice,
    TResult? Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult? Function(InnerIotDevicesError value)? innerIotDevicesError,
  }) {
    return innerIotDevicesUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(ControlDevice value)? controlDevice,
    TResult Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult Function(InnerIotDevicesError value)? innerIotDevicesError,
    required TResult orElse(),
  }) {
    if (innerIotDevicesUpdate != null) {
      return innerIotDevicesUpdate(this);
    }
    return orElse();
  }
}

abstract class InnerIotDevicesUpdate implements IotDevicesEvent {
  const factory InnerIotDevicesUpdate(
          final IotDevicesDataWrapper iotDevicesDataWrapper) =
      _$InnerIotDevicesUpdateImpl;

  IotDevicesDataWrapper get iotDevicesDataWrapper;
  @JsonKey(ignore: true)
  _$$InnerIotDevicesUpdateImplCopyWith<_$InnerIotDevicesUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InnerIotDevicesErrorImplCopyWith<$Res> {
  factory _$$InnerIotDevicesErrorImplCopyWith(_$InnerIotDevicesErrorImpl value,
          $Res Function(_$InnerIotDevicesErrorImpl) then) =
      __$$InnerIotDevicesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object err});
}

/// @nodoc
class __$$InnerIotDevicesErrorImplCopyWithImpl<$Res>
    extends _$IotDevicesEventCopyWithImpl<$Res, _$InnerIotDevicesErrorImpl>
    implements _$$InnerIotDevicesErrorImplCopyWith<$Res> {
  __$$InnerIotDevicesErrorImplCopyWithImpl(_$InnerIotDevicesErrorImpl _value,
      $Res Function(_$InnerIotDevicesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$InnerIotDevicesErrorImpl(
      null == err ? _value.err : err,
    ));
  }
}

/// @nodoc

class _$InnerIotDevicesErrorImpl implements InnerIotDevicesError {
  const _$InnerIotDevicesErrorImpl(this.err);

  @override
  final Object err;

  @override
  String toString() {
    return 'IotDevicesEvent.innerIotDevicesError(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerIotDevicesErrorImpl &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerIotDevicesErrorImplCopyWith<_$InnerIotDevicesErrorImpl>
      get copyWith =>
          __$$InnerIotDevicesErrorImplCopyWithImpl<_$InnerIotDevicesErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(ControlData controlData) controlDevice,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        innerIotDevicesUpdate,
    required TResult Function(Object err) innerIotDevicesError,
  }) {
    return innerIotDevicesError(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(ControlData controlData)? controlDevice,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult? Function(Object err)? innerIotDevicesError,
  }) {
    return innerIotDevicesError?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(ControlData controlData)? controlDevice,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)?
        innerIotDevicesUpdate,
    TResult Function(Object err)? innerIotDevicesError,
    required TResult orElse(),
  }) {
    if (innerIotDevicesError != null) {
      return innerIotDevicesError(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(ControlDevice value) controlDevice,
    required TResult Function(InnerIotDevicesUpdate value)
        innerIotDevicesUpdate,
    required TResult Function(InnerIotDevicesError value) innerIotDevicesError,
  }) {
    return innerIotDevicesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? start,
    TResult? Function(ControlDevice value)? controlDevice,
    TResult? Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult? Function(InnerIotDevicesError value)? innerIotDevicesError,
  }) {
    return innerIotDevicesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(ControlDevice value)? controlDevice,
    TResult Function(InnerIotDevicesUpdate value)? innerIotDevicesUpdate,
    TResult Function(InnerIotDevicesError value)? innerIotDevicesError,
    required TResult orElse(),
  }) {
    if (innerIotDevicesError != null) {
      return innerIotDevicesError(this);
    }
    return orElse();
  }
}

abstract class InnerIotDevicesError implements IotDevicesEvent {
  const factory InnerIotDevicesError(final Object err) =
      _$InnerIotDevicesErrorImpl;

  Object get err;
  @JsonKey(ignore: true)
  _$$InnerIotDevicesErrorImplCopyWith<_$InnerIotDevicesErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IotDevicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        update,
    required TResult Function() errorConnection,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult? Function()? errorConnection,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult Function()? errorConnection,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Update value) update,
    required TResult Function(ErrorConnection value) errorConnection,
    required TResult Function(Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Update value)? update,
    TResult? Function(ErrorConnection value)? errorConnection,
    TResult? Function(Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Update value)? update,
    TResult Function(ErrorConnection value)? errorConnection,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IotDevicesStateCopyWith<$Res> {
  factory $IotDevicesStateCopyWith(
          IotDevicesState value, $Res Function(IotDevicesState) then) =
      _$IotDevicesStateCopyWithImpl<$Res, IotDevicesState>;
}

/// @nodoc
class _$IotDevicesStateCopyWithImpl<$Res, $Val extends IotDevicesState>
    implements $IotDevicesStateCopyWith<$Res> {
  _$IotDevicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$IotDevicesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'IotDevicesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        update,
    required TResult Function() errorConnection,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult? Function()? errorConnection,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult Function()? errorConnection,
    TResult Function()? empty,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Update value) update,
    required TResult Function(ErrorConnection value) errorConnection,
    required TResult Function(Empty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Update value)? update,
    TResult? Function(ErrorConnection value)? errorConnection,
    TResult? Function(Empty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Update value)? update,
    TResult Function(ErrorConnection value)? errorConnection,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements IotDevicesState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$IotDevicesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'IotDevicesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        update,
    required TResult Function() errorConnection,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult? Function()? errorConnection,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult Function()? errorConnection,
    TResult Function()? empty,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Update value) update,
    required TResult Function(ErrorConnection value) errorConnection,
    required TResult Function(Empty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Update value)? update,
    TResult? Function(ErrorConnection value)? errorConnection,
    TResult? Function(Empty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Update value)? update,
    TResult Function(ErrorConnection value)? errorConnection,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements IotDevicesState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IotDevicesDataWrapper iotDevicesDataWrapper});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$IotDevicesStateCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iotDevicesDataWrapper = null,
  }) {
    return _then(_$UpdateImpl(
      null == iotDevicesDataWrapper
          ? _value.iotDevicesDataWrapper
          : iotDevicesDataWrapper // ignore: cast_nullable_to_non_nullable
              as IotDevicesDataWrapper,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements Update {
  const _$UpdateImpl(this.iotDevicesDataWrapper);

  @override
  final IotDevicesDataWrapper iotDevicesDataWrapper;

  @override
  String toString() {
    return 'IotDevicesState.update(iotDevicesDataWrapper: $iotDevicesDataWrapper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.iotDevicesDataWrapper, iotDevicesDataWrapper) ||
                other.iotDevicesDataWrapper == iotDevicesDataWrapper));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iotDevicesDataWrapper);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        update,
    required TResult Function() errorConnection,
    required TResult Function() empty,
  }) {
    return update(iotDevicesDataWrapper);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult? Function()? errorConnection,
    TResult? Function()? empty,
  }) {
    return update?.call(iotDevicesDataWrapper);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult Function()? errorConnection,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(iotDevicesDataWrapper);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Update value) update,
    required TResult Function(ErrorConnection value) errorConnection,
    required TResult Function(Empty value) empty,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Update value)? update,
    TResult? Function(ErrorConnection value)? errorConnection,
    TResult? Function(Empty value)? empty,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Update value)? update,
    TResult Function(ErrorConnection value)? errorConnection,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements IotDevicesState {
  const factory Update(final IotDevicesDataWrapper iotDevicesDataWrapper) =
      _$UpdateImpl;

  IotDevicesDataWrapper get iotDevicesDataWrapper;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorConnectionImplCopyWith<$Res> {
  factory _$$ErrorConnectionImplCopyWith(_$ErrorConnectionImpl value,
          $Res Function(_$ErrorConnectionImpl) then) =
      __$$ErrorConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorConnectionImplCopyWithImpl<$Res>
    extends _$IotDevicesStateCopyWithImpl<$Res, _$ErrorConnectionImpl>
    implements _$$ErrorConnectionImplCopyWith<$Res> {
  __$$ErrorConnectionImplCopyWithImpl(
      _$ErrorConnectionImpl _value, $Res Function(_$ErrorConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorConnectionImpl implements ErrorConnection {
  const _$ErrorConnectionImpl();

  @override
  String toString() {
    return 'IotDevicesState.errorConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        update,
    required TResult Function() errorConnection,
    required TResult Function() empty,
  }) {
    return errorConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult? Function()? errorConnection,
    TResult? Function()? empty,
  }) {
    return errorConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult Function()? errorConnection,
    TResult Function()? empty,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Update value) update,
    required TResult Function(ErrorConnection value) errorConnection,
    required TResult Function(Empty value) empty,
  }) {
    return errorConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Update value)? update,
    TResult? Function(ErrorConnection value)? errorConnection,
    TResult? Function(Empty value)? empty,
  }) {
    return errorConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Update value)? update,
    TResult Function(ErrorConnection value)? errorConnection,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (errorConnection != null) {
      return errorConnection(this);
    }
    return orElse();
  }
}

abstract class ErrorConnection implements IotDevicesState {
  const factory ErrorConnection() = _$ErrorConnectionImpl;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$IotDevicesStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'IotDevicesState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        update,
    required TResult Function() errorConnection,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult? Function()? errorConnection,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult Function()? errorConnection,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Update value) update,
    required TResult Function(ErrorConnection value) errorConnection,
    required TResult Function(Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Update value)? update,
    TResult? Function(ErrorConnection value)? errorConnection,
    TResult? Function(Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Update value)? update,
    TResult Function(ErrorConnection value)? errorConnection,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements IotDevicesState {
  const factory Empty() = _$EmptyImpl;
}
