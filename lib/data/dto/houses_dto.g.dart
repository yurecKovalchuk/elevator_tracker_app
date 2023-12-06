// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'houses_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HousesDTOImpl _$$HousesDTOImplFromJson(Map<String, dynamic> json) =>
    _$HousesDTOImpl(
      houseName: json['houseName'] as String?,
      floors: json['floors'] as int?,
      currentLiftPosition: json['currentLiftPosition'] as int?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$HousesDTOImplToJson(_$HousesDTOImpl instance) =>
    <String, dynamic>{
      'houseName': instance.houseName,
      'floors': instance.floors,
      'currentLiftPosition': instance.currentLiftPosition,
      'id': instance.id,
    };
