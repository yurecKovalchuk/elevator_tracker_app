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
  HousesDTO? get housesDTO => throw _privateConstructorUsedError;
  int? get newLiftPosition => throw _privateConstructorUsedError;

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
      {LiftStateStatus status, HousesDTO? housesDTO, int? newLiftPosition});

  $HousesDTOCopyWith<$Res>? get housesDTO;
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
    Object? housesDTO = freezed,
    Object? newLiftPosition = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LiftStateStatus,
      housesDTO: freezed == housesDTO
          ? _value.housesDTO
          : housesDTO // ignore: cast_nullable_to_non_nullable
              as HousesDTO?,
      newLiftPosition: freezed == newLiftPosition
          ? _value.newLiftPosition
          : newLiftPosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HousesDTOCopyWith<$Res>? get housesDTO {
    if (_value.housesDTO == null) {
      return null;
    }

    return $HousesDTOCopyWith<$Res>(_value.housesDTO!, (value) {
      return _then(_value.copyWith(housesDTO: value) as $Val);
    });
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
      {LiftStateStatus status, HousesDTO? housesDTO, int? newLiftPosition});

  @override
  $HousesDTOCopyWith<$Res>? get housesDTO;
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
    Object? housesDTO = freezed,
    Object? newLiftPosition = freezed,
  }) {
    return _then(_$LiftStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LiftStateStatus,
      housesDTO: freezed == housesDTO
          ? _value.housesDTO
          : housesDTO // ignore: cast_nullable_to_non_nullable
              as HousesDTO?,
      newLiftPosition: freezed == newLiftPosition
          ? _value.newLiftPosition
          : newLiftPosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LiftStateImpl implements _LiftState {
  const _$LiftStateImpl(
      {this.status = LiftStateStatus.initial,
      this.housesDTO,
      this.newLiftPosition});

  @override
  @JsonKey()
  final LiftStateStatus status;
  @override
  final HousesDTO? housesDTO;
  @override
  final int? newLiftPosition;

  @override
  String toString() {
    return 'LiftState(status: $status, housesDTO: $housesDTO, newLiftPosition: $newLiftPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiftStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.housesDTO, housesDTO) ||
                other.housesDTO == housesDTO) &&
            (identical(other.newLiftPosition, newLiftPosition) ||
                other.newLiftPosition == newLiftPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, housesDTO, newLiftPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiftStateImplCopyWith<_$LiftStateImpl> get copyWith =>
      __$$LiftStateImplCopyWithImpl<_$LiftStateImpl>(this, _$identity);
}

abstract class _LiftState implements LiftState {
  const factory _LiftState(
      {final LiftStateStatus status,
      final HousesDTO? housesDTO,
      final int? newLiftPosition}) = _$LiftStateImpl;

  @override
  LiftStateStatus get status;
  @override
  HousesDTO? get housesDTO;
  @override
  int? get newLiftPosition;
  @override
  @JsonKey(ignore: true)
  _$$LiftStateImplCopyWith<_$LiftStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
