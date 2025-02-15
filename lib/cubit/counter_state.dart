part of 'counter_cubit.dart';

class CounterState {
  final int counter;
  CounterState(this.counter);
}

final class CounterIncrement extends CounterState {
  CounterIncrement(super.counter);
}

final class CounterDecrement extends CounterState {
  CounterDecrement(super.counter);
}
