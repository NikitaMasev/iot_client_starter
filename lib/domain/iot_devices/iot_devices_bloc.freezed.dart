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
abstract class _$$StartCopyWith<$Res> {
  factory _$$StartCopyWith(_$Start value, $Res Function(_$Start) then) =
      __$$StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartCopyWithImpl<$Res>
    extends _$IotDevicesEventCopyWithImpl<$Res, _$Start>
    implements _$$StartCopyWith<$Res> {
  __$$StartCopyWithImpl(_$Start _value, $Res Function(_$Start) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Start implements Start {
  const _$Start();

  @override
  String toString() {
    return 'IotDevicesEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Start);
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
  const factory Start() = _$Start;
}

/// @nodoc
abstract class _$$ControlDeviceCopyWith<$Res> {
  factory _$$ControlDeviceCopyWith(
          _$ControlDevice value, $Res Function(_$ControlDevice) then) =
      __$$ControlDeviceCopyWithImpl<$Res>;
  @useResult
  $Res call({ControlData controlData});
}

/// @nodoc
class __$$ControlDeviceCopyWithImpl<$Res>
    extends _$IotDevicesEventCopyWithImpl<$Res, _$ControlDevice>
    implements _$$ControlDeviceCopyWith<$Res> {
  __$$ControlDeviceCopyWithImpl(
      _$ControlDevice _value, $Res Function(_$ControlDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlData = null,
  }) {
    return _then(_$ControlDevice(
      null == controlData
          ? _value.controlData
          : controlData // ignore: cast_nullable_to_non_nullable
              as ControlData,
    ));
  }
}

/// @nodoc

class _$ControlDevice implements ControlDevice {
  const _$ControlDevice(this.controlData);

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
            other is _$ControlDevice &&
            (identical(other.controlData, controlData) ||
                other.controlData == controlData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controlData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ControlDeviceCopyWith<_$ControlDevice> get copyWith =>
      __$$ControlDeviceCopyWithImpl<_$ControlDevice>(this, _$identity);

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
  const factory ControlDevice(final ControlData controlData) = _$ControlDevice;

  ControlData get controlData;
  @JsonKey(ignore: true)
  _$$ControlDeviceCopyWith<_$ControlDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InnerIotDevicesUpdateCopyWith<$Res> {
  factory _$$InnerIotDevicesUpdateCopyWith(_$InnerIotDevicesUpdate value,
          $Res Function(_$InnerIotDevicesUpdate) then) =
      __$$InnerIotDevicesUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({IotDevicesDataWrapper iotDevicesDataWrapper});
}

/// @nodoc
class __$$InnerIotDevicesUpdateCopyWithImpl<$Res>
    extends _$IotDevicesEventCopyWithImpl<$Res, _$InnerIotDevicesUpdate>
    implements _$$InnerIotDevicesUpdateCopyWith<$Res> {
  __$$InnerIotDevicesUpdateCopyWithImpl(_$InnerIotDevicesUpdate _value,
      $Res Function(_$InnerIotDevicesUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iotDevicesDataWrapper = null,
  }) {
    return _then(_$InnerIotDevicesUpdate(
      null == iotDevicesDataWrapper
          ? _value.iotDevicesDataWrapper
          : iotDevicesDataWrapper // ignore: cast_nullable_to_non_nullable
              as IotDevicesDataWrapper,
    ));
  }
}

/// @nodoc

class _$InnerIotDevicesUpdate implements InnerIotDevicesUpdate {
  const _$InnerIotDevicesUpdate(this.iotDevicesDataWrapper);

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
            other is _$InnerIotDevicesUpdate &&
            (identical(other.iotDevicesDataWrapper, iotDevicesDataWrapper) ||
                other.iotDevicesDataWrapper == iotDevicesDataWrapper));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iotDevicesDataWrapper);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerIotDevicesUpdateCopyWith<_$InnerIotDevicesUpdate> get copyWith =>
      __$$InnerIotDevicesUpdateCopyWithImpl<_$InnerIotDevicesUpdate>(
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
      _$InnerIotDevicesUpdate;

  IotDevicesDataWrapper get iotDevicesDataWrapper;
  @JsonKey(ignore: true)
  _$$InnerIotDevicesUpdateCopyWith<_$InnerIotDevicesUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InnerIotDevicesErrorCopyWith<$Res> {
  factory _$$InnerIotDevicesErrorCopyWith(_$InnerIotDevicesError value,
          $Res Function(_$InnerIotDevicesError) then) =
      __$$InnerIotDevicesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object err});
}

/// @nodoc
class __$$InnerIotDevicesErrorCopyWithImpl<$Res>
    extends _$IotDevicesEventCopyWithImpl<$Res, _$InnerIotDevicesError>
    implements _$$InnerIotDevicesErrorCopyWith<$Res> {
  __$$InnerIotDevicesErrorCopyWithImpl(_$InnerIotDevicesError _value,
      $Res Function(_$InnerIotDevicesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$InnerIotDevicesError(
      null == err ? _value.err : err,
    ));
  }
}

/// @nodoc

class _$InnerIotDevicesError implements InnerIotDevicesError {
  const _$InnerIotDevicesError(this.err);

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
            other is _$InnerIotDevicesError &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerIotDevicesErrorCopyWith<_$InnerIotDevicesError> get copyWith =>
      __$$InnerIotDevicesErrorCopyWithImpl<_$InnerIotDevicesError>(
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
  const factory InnerIotDevicesError(final Object err) = _$InnerIotDevicesError;

  Object get err;
  @JsonKey(ignore: true)
  _$$InnerIotDevicesErrorCopyWith<_$InnerIotDevicesError> get copyWith =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult? Function()? errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)? update,
    TResult Function()? errorConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Update value) update,
    required TResult Function(ErrorConnection value) errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Update value)? update,
    TResult? Function(ErrorConnection value)? errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Update value)? update,
    TResult Function(ErrorConnection value)? errorConnection,
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
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$IotDevicesStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'IotDevicesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements IotDevicesState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$IotDevicesStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'IotDevicesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
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
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements IotDevicesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({IotDevicesDataWrapper iotDevicesDataWrapper});
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res>
    extends _$IotDevicesStateCopyWithImpl<$Res, _$Update>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iotDevicesDataWrapper = null,
  }) {
    return _then(_$Update(
      null == iotDevicesDataWrapper
          ? _value.iotDevicesDataWrapper
          : iotDevicesDataWrapper // ignore: cast_nullable_to_non_nullable
              as IotDevicesDataWrapper,
    ));
  }
}

/// @nodoc

class _$Update implements Update {
  const _$Update(this.iotDevicesDataWrapper);

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
            other is _$Update &&
            (identical(other.iotDevicesDataWrapper, iotDevicesDataWrapper) ||
                other.iotDevicesDataWrapper == iotDevicesDataWrapper));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iotDevicesDataWrapper);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IotDevicesDataWrapper iotDevicesDataWrapper)
        update,
    required TResult Function() errorConnection,
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
      _$Update;

  IotDevicesDataWrapper get iotDevicesDataWrapper;
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorConnectionCopyWith<$Res> {
  factory _$$ErrorConnectionCopyWith(
          _$ErrorConnection value, $Res Function(_$ErrorConnection) then) =
      __$$ErrorConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorConnectionCopyWithImpl<$Res>
    extends _$IotDevicesStateCopyWithImpl<$Res, _$ErrorConnection>
    implements _$$ErrorConnectionCopyWith<$Res> {
  __$$ErrorConnectionCopyWithImpl(
      _$ErrorConnection _value, $Res Function(_$ErrorConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorConnection implements ErrorConnection {
  const _$ErrorConnection();

  @override
  String toString() {
    return 'IotDevicesState.errorConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorConnection);
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
    required TResult orElse(),
  }) {
    if (errorConnection != null) {
      return errorConnection(this);
    }
    return orElse();
  }
}

abstract class ErrorConnection implements IotDevicesState {
  const factory ErrorConnection() = _$ErrorConnection;
}
