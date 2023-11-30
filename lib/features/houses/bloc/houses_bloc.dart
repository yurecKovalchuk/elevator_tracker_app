import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'houses_state.dart';

part 'houses_bloc.freezed.dart';

class HousesBloc extends Cubit<HousesState> {
  HousesBloc() : super(const HousesState());
}
