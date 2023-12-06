// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'houses_dto.freezed.dart';

part 'houses_dto.g.dart';

@freezed
class HousesDTO with _$HousesDTO {
  const factory HousesDTO({
    @JsonKey(name: 'houseName') String? houseName,
    @JsonKey(name: 'floors') int? floors,
    @JsonKey(name: 'currentLiftPosition') int? currentLiftPosition,
    @JsonKey(name: 'id') int? id,
  }) = _HousesDTO;

  factory HousesDTO.fromJson(Map<String, dynamic> json) => _$HousesDTOFromJson(json);
}
