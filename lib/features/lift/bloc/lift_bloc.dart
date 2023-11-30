import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lift_state.dart';

part 'lift_bloc.freezed.dart';

class LiftBloc extends Cubit<LiftState> {
  LiftBloc() : super(const LiftState());
}
