import 'package:elevator_tracker_app/data/data.dart';
import 'package:elevator_tracker_app/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lift_state.dart';

part 'lift_bloc.freezed.dart';

class LiftBloc extends Cubit<LiftState> {
  LiftBloc(
    this._repository,
    HousesDTO housesDTO,
  ) : super(LiftState(
          houseName: housesDTO.houseName,
          floors: housesDTO.floors,
          currentLiftPosition: housesDTO.currentLiftPosition,
        ));

  final TrackerRepository _repository;
}
