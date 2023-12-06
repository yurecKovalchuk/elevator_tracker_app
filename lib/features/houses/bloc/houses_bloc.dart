import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:elevator_tracker_app/models/models.dart';
import 'package:elevator_tracker_app/data/data.dart';
import 'package:elevator_tracker_app/domain/domain.dart';

part 'houses_state.dart';

part 'houses_bloc.freezed.dart';

class HousesBloc extends Cubit<HousesState> {
  HousesBloc(
    this._repository,
  ) : super(
          const HousesState(),
        );

  final TrackerRepository _repository;

  void setHouse(String name, int floor) {
    final houseModel = HouseModel(houseName: name, floors: floor);
    _repository.insertHouses(houseModel);
  }

  void loadHouses() async {
    final result = await _repository.getAllHouses();
    emit(state.copyWith(housesDTO: result));
  }

  void deleteHouse(int id) {
    _repository.deleteHouse(id);
  }
}
