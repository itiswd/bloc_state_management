class CounterState {
  final int counterA;
  final int counterB;
  final int counterC;
  CounterState(this.counterA, this.counterB, this.counterC);
}

class IncrementStateA extends CounterState {
  IncrementStateA(super.counterA, super.counterB, super.counterC);
}

class DecrementStateA extends CounterState {
  DecrementStateA(super.counterA, super.counterB, super.counterC);
}

class IncrementStateB extends CounterState {
  IncrementStateB(super.counterB, super.counterA, super.counterC);
}

class DecrementStateB extends CounterState {
  DecrementStateB(super.counterB, super.counterA, super.counterC);
}

class IncrementStateC extends CounterState {
  IncrementStateC(super.counterC, super.counterA, super.counterB);
}

class DecrementStateC extends CounterState {
  DecrementStateC(super.counterC, super.counterA, super.counterB);
}
