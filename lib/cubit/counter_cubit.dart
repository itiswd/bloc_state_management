import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0));

  void increment() => emit(CounterIncrement(state.counter + 1));
  void decrement() => emit(CounterDecrement(state.counter - 1));
}
