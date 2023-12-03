// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'houses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HousesState {
  HousesStateStatus get status => throw _privateConstructorUsedError;
  HouseModel? get houseModel => throw _privateConstructorUsedError;
  List<HousesDTO>? get housesDTO => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HousesStateCopyWith<HousesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HousesStateCopyWith<$Res> {
  factory $HousesStateCopyWith(
          HousesState value, $Res Function(HousesState) then) =
      _$HousesStateCopyWithImpl<$Res, HousesState>;
  @useResult
  $Res call(
      {HousesStateStatus status,
      HouseModel? houseModel,
      List<HousesDTO>? housesDTO});
}

/// @nodoc
class _$HousesStateCopyWithImpl<$Res, $Val extends HousesState>
    implements $HousesStateCopyWith<$Res> {
  _$HousesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? houseModel = freezed,
    Object? housesDTO = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HousesStateStatus,
      houseModel: freezed == houseModel
          ? _value.houseModel
          : houseModel // ignore: cast_nullable_to_non_nullable
              as HouseModel?,
      housesDTO: freezed == housesDTO
          ? _value.housesDTO
          : housesDTO // ignore: cast_nullable_to_non_nullable
              as List<HousesDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HousesStateImplCopyWith<$Res>
    implements $HousesStateCopyWith<$Res> {
  factory _$$HousesStateImplCopyWith(
          _$HousesStateImpl value, $Res Function(_$HousesStateImpl) then) =
      __$$HousesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HousesStateStatus status,
      HouseModel? houseModel,
      List<HousesDTO>? housesDTO});
}

/// @nodoc
class __$$HousesStateImplCopyWithImpl<$Res>
    extends _$HousesStateCopyWithImpl<$Res, _$HousesStateImpl>
    implements _$$HousesStateImplCopyWith<$Res> {
  __$$HousesStateImplCopyWithImpl(
      _$HousesStateImpl _value, $Res Function(_$HousesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? houseModel = freezed,
    Object? housesDTO = freezed,
  }) {
    return _then(_$HousesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HousesStateStatus,
      houseModel: freezed == houseModel
          ? _value.houseModel
          : houseModel // ignore: cast_nullable_to_non_nullable
              as HouseModel?,
      housesDTO: freezed == housesDTO
          ? _value._housesDTO
          : housesDTO // ignore: cast_nullable_to_non_nullable
              as List<HousesDTO>?,
    ));
  }
}

/// @nodoc

class _$HousesStateImpl implements _HousesState {
  const _$HousesStateImpl(
      {this.status = HousesStateStatus.initial,
      this.houseModel,
      final List<HousesDTO>? housesDTO})
      : _housesDTO = housesDTO;

  @override
  @JsonKey()
  final HousesStateStatus status;
  @override
  final HouseModel? houseModel;
  final List<HousesDTO>? _housesDTO;
  @override
  List<HousesDTO>? get housesDTO {
    final value = _housesDTO;
    if (value == null) return null;
    if (_housesDTO is EqualUnmodifiableListView) return _housesDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HousesState(status: $status, houseModel: $houseModel, housesDTO: $housesDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HousesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.houseModel, houseModel) ||
                other.houseModel == houseModel) &&
            const DeepCollectionEquality()
                .equals(other._housesDTO, _housesDTO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, houseModel,
      const DeepCollectionEquality().hash(_housesDTO));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HousesStateImplCopyWith<_$HousesStateImpl> get copyWith =>
      __$$HousesStateImplCopyWithImpl<_$HousesStateImpl>(this, _$identity);
}

abstract class _HousesState implements HousesState {
  const factory _HousesState(
      {final HousesStateStatus status,
      final HouseModel? houseModel,
      final List<HousesDTO>? housesDTO}) = _$HousesStateImpl;

  @override
  HousesStateStatus get status;
  @override
  HouseModel? get houseModel;
  @override
  List<HousesDTO>? get housesDTO;
  @override
  @JsonKey(ignore: true)
  _$$HousesStateImplCopyWith<_$HousesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
