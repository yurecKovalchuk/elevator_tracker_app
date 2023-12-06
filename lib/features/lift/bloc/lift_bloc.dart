import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:elevator_tracker_app/data/data.dart';
import 'package:elevator_tracker_app/domain/domain.dart';

part 'lift_state.dart';

part 'lift_bloc.freezed.dart';

class LiftBloc extends Cubit<LiftState> {
  LiftBloc(
    this._repository,
  ) : super(const LiftState());

  final TrackerRepository _repository;

  void setNewLiftPosition(int newLiftPosition) {
    emit(state.copyWith(newLiftPosition: newLiftPosition));
    emit(state.copyWith(status: LiftStateStatus.loading));
  }

  void getHouseDTO(int id) async {
    final housesDTO = await _repository.getHouseById(id);
    emit(state.copyWith(housesDTO: housesDTO));
  }

  Future<void> moveLift() async {
    int currentLiftPosition = state.housesDTO!.currentLiftPosition!;
    int newLiftPosition = state.newLiftPosition!;

    int step = (currentLiftPosition < newLiftPosition) ? 1 : -1;

    while (currentLiftPosition != newLiftPosition) {
      await Future.delayed(const Duration(seconds: 2));
      currentLiftPosition += step;
      await _repository.updateCurrentLiftPosition(state.housesDTO!.id!, currentLiftPosition);
      getHouseDTO(state.housesDTO!.id!);
    }
    emit(state.copyWith(status: LiftStateStatus.success));
  }

  void moveLiftTo(int id, int newFloor) {
    _repository.updateCurrentLiftPosition(id, newFloor);
  }
}
