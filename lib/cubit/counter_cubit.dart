// Import necessary packages and files
import 'package:bloc_state_management/cubit/counter_state.dart'; // Import the CounterState class
import 'package:flutter_bloc/flutter_bloc.dart'; // Import flutter_bloc for Cubit functionality

// CounterCubit: Manages the state (counter value) and provides methods to modify it
class CounterCubit extends Cubit<CounterState> {
  // Constructor: Initializes the CounterCubit with an initial state
  CounterCubit() : super(CounterState(0)); // Start with a counter value of 0

  // Method to increment the counter
  void increment() {
    // Emit a new state with the counter value incremented by 1
    emit(CounterState(state.counter + 1));
  }

  // Method to decrement the counter
  void decrement() {
    // Emit a new state with the counter value decremented by 1
    emit(CounterState(state.counter - 1));
  }
}
