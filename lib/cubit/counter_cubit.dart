import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);
  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrementPoints({required String team, required int buttonNumber}) {
    if (team == 'A' || team == 'a') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void resetTeamsPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}
