// Import necessary packages and files
import 'package:bloc_state_management/cubit/counter_cubit.dart'; // Import the CounterCubit
import 'package:bloc_state_management/cubit/counter_state.dart'; // Import the CounterState
import 'package:flutter/material.dart'; // Flutter material design package
import 'package:flutter_bloc/flutter_bloc.dart'; // flutter_bloc package for state management

// Main function: Entry point of the application
void main() {
  // Run the MyApp widget
  runApp(const MyApp());
}

// MyApp: Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Use BlocProvider to provide the CounterCubit to the widget tree
    return BlocProvider(
      // Create an instance of CounterCubit and provide it to the app
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // Disable debug banner
        home: Home(), // Set the Home widget as the home screen
      ),
    );
  }
}

// Home: The main screen of the application
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the row horizontally
          children: [
            // IconButton for incrementing the counter
            IconButton(
              onPressed: () {
                // Access the CounterCubit instance using context.read and call the increment method
                context.read<CounterCubit>().increment();
              },
              icon: Icon(Icons.add), // Add icon
            ),

            // BlocBuilder: Rebuilds the widget when the CounterCubit state changes
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                // Display the current counter value from the state
                return Text(state.counter.toString());
              },
            ),

            // IconButton for decrementing the counter
            IconButton(
              onPressed: () {
                // Access the CounterCubit instance using context.read and call the decrement method
                context.read<CounterCubit>().decrement();
              },
              icon: Icon(Icons.remove), // Remove icon
            ),
          ],
        ),
      ),
    );
  }
}
