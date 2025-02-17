import 'package:bloc_state_management/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitA extends Cubit<CounterStateA> {
  CounterCubitA() : super(CounterStateA(0));

  void increment() {
    emit(IncrementStateA(state.counterA + 1));
  }

  void decrement() {
    emit(DecrementStateA(state.counterA - 1));
  }
}

class CounterCubitB extends Cubit<CounterStateB> {
  CounterCubitB() : super(CounterStateB(0));

  void increment() {
    emit(IncrementStateB(state.counterB + 1));
  }

  void decrement() {
    emit(DecrementStateB(state.counterB - 1));
  }
}

class CounterCubitC extends Cubit<CounterStateC> {
  CounterCubitC() : super(CounterStateC(0));

  void increment() {
    emit(IncrementStateC(state.counterC + 1));
  }

  void decrement() {
    emit(DecrementStateC(state.counterC - 1));
  }
}
