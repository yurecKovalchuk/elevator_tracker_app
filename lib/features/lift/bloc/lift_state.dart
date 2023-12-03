part of 'lift_bloc.dart';

enum LiftStateStatus {
  initial,
  loading,
  error,
  success,
}

@freezed
class LiftState with _$LiftState {
  const factory LiftState({
    @Default(LiftStateStatus.initial) LiftStateStatus status,
    String? houseName,
    int? floors,
    int? currentLiftPosition,
  }) = _LiftState;
}
