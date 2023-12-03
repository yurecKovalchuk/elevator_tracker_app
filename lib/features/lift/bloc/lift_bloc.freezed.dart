// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lift_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LiftState {
  LiftStateStatus get status => throw _privateConstructorUsedError;
  String? get houseName => throw _privateConstructorUsedError;
  int? get floors => throw _privateConstructorUsedError;
  int? get currentLiftPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiftStateCopyWith<LiftState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiftStateCopyWith<$Res> {
  factory $LiftStateCopyWith(LiftState value, $Res Function(LiftState) then) =
      _$LiftStateCopyWithImpl<$Res, LiftState>;
  @useResult
  $Res call(
      {LiftStateStatus status,
      String? houseName,
      int? floors,
      int? currentLiftPosition});
}

/// @nodoc
class _$LiftStateCopyWithImpl<$Res, $Val extends LiftState>
    implements $LiftStateCopyWith<$Res> {
  _$LiftStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? houseName = freezed,
    Object? floors = freezed,
    Object? currentLiftPosition = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LiftStateStatus,
      houseName: freezed == houseName
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as String?,
      floors: freezed == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      currentLiftPosition: freezed == currentLiftPosition
          ? _value.currentLiftPosition
          : currentLiftPosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiftStateImplCopyWith<$Res>
    implements $LiftStateCopyWith<$Res> {
  factory _$$LiftStateImplCopyWith(
          _$LiftStateImpl value, $Res Function(_$LiftStateImpl) then) =
      __$$LiftStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LiftStateStatus status,
      String? houseName,
      int? floors,
      int? currentLiftPosition});
}

/// @nodoc
class __$$LiftStateImplCopyWithImpl<$Res>
    extends _$LiftStateCopyWithImpl<$Res, _$LiftStateImpl>
    implements _$$LiftStateImplCopyWith<$Res> {
  __$$LiftStateImplCopyWithImpl(
      _$LiftStateImpl _value, $Res Function(_$LiftStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? houseName = freezed,
    Object? floors = freezed,
    Object? currentLiftPosition = freezed,
  }) {
    return _then(_$LiftStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LiftStateStatus,
      houseName: freezed == houseName
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as String?,
      floors: freezed == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      currentLiftPosition: freezed == currentLiftPosition
          ? _value.currentLiftPosition
          : currentLiftPosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LiftStateImpl implements _LiftState {
  const _$LiftStateImpl(
      {this.status = LiftStateStatus.initial,
      this.houseName,
      this.floors,
      this.currentLiftPosition});

  @override
  @JsonKey()
  final LiftStateStatus status;
  @override
  final String? houseName;
  @override
  final int? floors;
  @override
  final int? currentLiftPosition;

  @override
  String toString() {
    return 'LiftState(status: $status, houseName: $houseName, floors: $floors, currentLiftPosition: $currentLiftPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiftStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.houseName, houseName) ||
                other.houseName == houseName) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.currentLiftPosition, currentLiftPosition) ||
                other.currentLiftPosition == currentLiftPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, houseName, floors, currentLiftPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiftStateImplCopyWith<_$LiftStateImpl> get copyWith =>
      __$$LiftStateImplCopyWithImpl<_$LiftStateImpl>(this, _$identity);
}

abstract class _LiftState implements LiftState {
  const factory _LiftState(
      {final LiftStateStatus status,
      final String? houseName,
      final int? floors,
      final int? currentLiftPosition}) = _$LiftStateImpl;

  @override
  LiftStateStatus get status;
  @override
  String? get houseName;
  @override
  int? get floors;
  @override
  int? get currentLiftPosition;
  @override
  @JsonKey(ignore: true)
  _$$LiftStateImplCopyWith<_$LiftStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
