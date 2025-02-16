import 'package:bloc_state_management/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0));

  void increment() => emit(CounterState(state.counter + 1));
  void decrement() => emit(CounterState(state.counter - 1));
}
