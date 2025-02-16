import 'package:bloc_state_management/cubit/counter_cubit.dart';
import 'package:bloc_state_management/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              icon: Icon(Icons.add),
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(state.counter.toString());
              },
            ),
            IconButton(
              onPressed: () => context.read<CounterCubit>().decrement(),
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
