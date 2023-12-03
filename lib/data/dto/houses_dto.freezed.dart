// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'houses_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HousesDTO _$HousesDTOFromJson(Map<String, dynamic> json) {
  return _HousesDTO.fromJson(json);
}

/// @nodoc
mixin _$HousesDTO {
  @JsonKey(name: 'houseName')
  String? get houseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'floors')
  int? get floors => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentLiftPosition')
  int? get currentLiftPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HousesDTOCopyWith<HousesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HousesDTOCopyWith<$Res> {
  factory $HousesDTOCopyWith(HousesDTO value, $Res Function(HousesDTO) then) =
      _$HousesDTOCopyWithImpl<$Res, HousesDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'houseName') String? houseName,
      @JsonKey(name: 'floors') int? floors,
      @JsonKey(name: 'currentLiftPosition') int? currentLiftPosition,
      @JsonKey(name: 'id') int? id});
}

/// @nodoc
class _$HousesDTOCopyWithImpl<$Res, $Val extends HousesDTO>
    implements $HousesDTOCopyWith<$Res> {
  _$HousesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseName = freezed,
    Object? floors = freezed,
    Object? currentLiftPosition = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HousesDTOImplCopyWith<$Res>
    implements $HousesDTOCopyWith<$Res> {
  factory _$$HousesDTOImplCopyWith(
          _$HousesDTOImpl value, $Res Function(_$HousesDTOImpl) then) =
      __$$HousesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'houseName') String? houseName,
      @JsonKey(name: 'floors') int? floors,
      @JsonKey(name: 'currentLiftPosition') int? currentLiftPosition,
      @JsonKey(name: 'id') int? id});
}

/// @nodoc
class __$$HousesDTOImplCopyWithImpl<$Res>
    extends _$HousesDTOCopyWithImpl<$Res, _$HousesDTOImpl>
    implements _$$HousesDTOImplCopyWith<$Res> {
  __$$HousesDTOImplCopyWithImpl(
      _$HousesDTOImpl _value, $Res Function(_$HousesDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseName = freezed,
    Object? floors = freezed,
    Object? currentLiftPosition = freezed,
    Object? id = freezed,
  }) {
    return _then(_$HousesDTOImpl(
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HousesDTOImpl implements _HousesDTO {
  const _$HousesDTOImpl(
      {@JsonKey(name: 'houseName') this.houseName,
      @JsonKey(name: 'floors') this.floors,
      @JsonKey(name: 'currentLiftPosition') this.currentLiftPosition = 1,
      @JsonKey(name: 'id') this.id});

  factory _$HousesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$HousesDTOImplFromJson(json);

  @override
  @JsonKey(name: 'houseName')
  final String? houseName;
  @override
  @JsonKey(name: 'floors')
  final int? floors;
  @override
  @JsonKey(name: 'currentLiftPosition')
  final int? currentLiftPosition;
  @override
  @JsonKey(name: 'id')
  final int? id;

  @override
  String toString() {
    return 'HousesDTO(houseName: $houseName, floors: $floors, currentLiftPosition: $currentLiftPosition, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HousesDTOImpl &&
            (identical(other.houseName, houseName) ||
                other.houseName == houseName) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.currentLiftPosition, currentLiftPosition) ||
                other.currentLiftPosition == currentLiftPosition) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, houseName, floors, currentLiftPosition, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HousesDTOImplCopyWith<_$HousesDTOImpl> get copyWith =>
      __$$HousesDTOImplCopyWithImpl<_$HousesDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HousesDTOImplToJson(
      this,
    );
  }
}

abstract class _HousesDTO implements HousesDTO {
  const factory _HousesDTO(
      {@JsonKey(name: 'houseName') final String? houseName,
      @JsonKey(name: 'floors') final int? floors,
      @JsonKey(name: 'currentLiftPosition') final int? currentLiftPosition,
      @JsonKey(name: 'id') final int? id}) = _$HousesDTOImpl;

  factory _HousesDTO.fromJson(Map<String, dynamic> json) =
      _$HousesDTOImpl.fromJson;

  @override
  @JsonKey(name: 'houseName')
  String? get houseName;
  @override
  @JsonKey(name: 'floors')
  int? get floors;
  @override
  @JsonKey(name: 'currentLiftPosition')
  int? get currentLiftPosition;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$HousesDTOImplCopyWith<_$HousesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
