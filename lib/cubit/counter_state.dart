class CounterStateA {
  final int counterA;

  CounterStateA(this.counterA);
}

class CounterStateB {
  final int counterB;

  CounterStateB(this.counterB);
}

class CounterStateC {
  final int counterC;

  CounterStateC(this.counterC);
}

class IncrementStateA extends CounterStateA {
  IncrementStateA(super.counterA);
}

class DecrementStateA extends CounterStateA {
  DecrementStateA(super.counterA);
}

class IncrementStateB extends CounterStateB {
  IncrementStateB(super.counterB);
}

class DecrementStateB extends CounterStateB {
  DecrementStateB(super.counterB);
}

class IncrementStateC extends CounterStateC {
  IncrementStateC(super.counterC);
}

class DecrementStateC extends CounterStateC {
  DecrementStateC(super.counterC);
}
