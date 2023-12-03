part of 'houses_bloc.dart';

enum HousesStateStatus {
  initial,
  loading,
  error,
  success,
}

@freezed
class HousesState with _$HousesState {
  const factory HousesState({
    @Default(HousesStateStatus.initial) HousesStateStatus status,
    HouseModel? houseModel,
    List<HousesDTO>? housesDTO,
  }) = _HousesState;
}
