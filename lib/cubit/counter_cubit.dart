import 'package:bloc_state_management/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0, 0, 0));

  void incrementA() {
    emit(IncrementStateA(state.counterA + 1, state.counterB, state.counterC));
  }

  void decrementA() {
    emit(DecrementStateA(state.counterA - 1, state.counterB, state.counterC));
  }

  void incrementB() {
    emit(IncrementStateB(state.counterA, state.counterB + 1, state.counterC));
  }

  void decrementB() {
    emit(DecrementStateB(state.counterA, state.counterB - 1, state.counterC));
  }

  void incrementC() {
    emit(IncrementStateC(state.counterA, state.counterB, state.counterC + 1));
  }

  void decrementC() {
    emit(DecrementStateC(state.counterA, state.counterB, state.counterC - 1));
  }
}
