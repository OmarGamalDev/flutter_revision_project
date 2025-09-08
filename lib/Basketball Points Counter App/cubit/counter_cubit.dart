import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_revision_project/Basketball%20Points%20Counter%20App/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementedState());
  int countTeamA = 0;
  int countTeamb = 0;
  void incrementA({required String team, required int buttonnumber}) {
    if (team == 'A') {
      countTeamA += buttonnumber;
      emit(CounterAIncrementedState());
    }
  }

  void incrementB({required String team, required int buttonnumber}) {
    if (team == 'B') {
      countTeamb += buttonnumber;
      emit(CounterBIncrementedState());
    }
  }

  void reset() {
    countTeamA = 0;
    countTeamb = 0;
    emit(CounterResetState());
  }
}
