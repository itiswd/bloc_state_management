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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //A
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().incrementA();
                  },
                  icon: Icon(Icons.add),
                ),
                BlocSelector<CounterCubit, CounterState, int>(
                  selector: (state) => state.counterA,
                  builder: (context, counterA) {
                    debugPrint('state: $counterA');

                    return MainText(
                      text: counterA.toString(),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrementA();
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
            //B
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().incrementB();
                  },
                  icon: Icon(Icons.add),
                ),
                BlocSelector<CounterCubit, CounterState, int>(
                  selector: (state) => state.counterB,
                  builder: (context, counterB) {
                    debugPrint('state: $counterB');

                    return MainText(
                      text: counterB.toString(),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrementB();
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
            //C
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().incrementC();
                  },
                  icon: Icon(Icons.add),
                ),
                BlocSelector<CounterCubit, CounterState, int>(
                  selector: (state) => state.counterC,
                  builder: (context, counterC) {
                    debugPrint('state: $counterC');
                    return MainText(
                      text: counterC.toString(),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrementC();
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MainText extends StatelessWidget {
  final String text;
  final Color color;
  const MainText({
    super.key,
    required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        color: color,
      ),
    );
  }
}
