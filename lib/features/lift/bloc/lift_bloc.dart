import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:elevator_tracker_app/data/data.dart';
import 'package:elevator_tracker_app/domain/domain.dart';
import 'package:elevator_tracker_app/services/services.dart';

part 'lift_state.dart';

part 'lift_bloc.freezed.dart';

class LiftBloc extends Cubit<LiftState> {
  LiftBloc(
    this._repository,
  ) : super(const LiftState()) {
    startNotificationTimer();
  }

  final TrackerRepository _repository;
  late Timer _notificationTimer;

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
    // pushNotification(state.housesDTO!.houseName.toString(), currentLiftPosition);
    emit(state.copyWith(status: LiftStateStatus.success));
  }

  void moveLiftTo(int id, int newFloor) {
    _repository.updateCurrentLiftPosition(id, newFloor);
  }

  void pushNotification(String houseName, int currentLiftPosition) {
    NotificationHandler.showNotification(houseName, currentLiftPosition.toString());
  }

  void startNotificationTimer() {
    _notificationTimer = Timer.periodic(const Duration(minutes: 1), (timer) {
      pushNotification(state.housesDTO!.houseName.toString(), state.housesDTO!.currentLiftPosition!);
    });
  }

  @override
  Future<void> close() {
    _notificationTimer.cancel();
    return super.close();
  }
}
