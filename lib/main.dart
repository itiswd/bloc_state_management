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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubitA()),
        BlocProvider(create: (context) => CounterCubitB()),
        BlocProvider(create: (context) => CounterCubitC()),
      ],
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
                    context.read<CounterCubitA>().increment();
                  },
                  icon: Icon(Icons.add),
                ),
                BlocBuilder<CounterCubitA, CounterStateA>(
                  builder: (context, state) {
                    debugPrint('state: $state');
                    if (state is IncrementStateA) {
                      return MainText(
                        text: state.counterA.toString(),
                        color: Colors.green,
                      );
                    } else if (state is DecrementStateA) {
                      return MainText(
                        text: state.counterA.toString(),
                        color: Colors.red,
                      );
                    }
                    return MainText(
                      text: state.counterA.toString(),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterCubitA>().decrement();
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
                    context.read<CounterCubitB>().increment();
                  },
                  icon: Icon(Icons.add),
                ),
                BlocBuilder<CounterCubitB, CounterStateB>(
                  builder: (context, state) {
                    debugPrint('state: $state');
                    if (state is IncrementStateB) {
                      return MainText(
                        text: state.counterB.toString(),
                        color: Colors.green,
                      );
                    } else if (state is DecrementStateB) {
                      return MainText(
                        text: state.counterB.toString(),
                        color: Colors.red,
                      );
                    }
                    return MainText(
                      text: state.counterB.toString(),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterCubitB>().decrement();
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
                    context.read<CounterCubitC>().increment();
                  },
                  icon: Icon(Icons.add),
                ),
                BlocBuilder<CounterCubitC, CounterStateC>(
                  builder: (context, state) {
                    debugPrint('state: $state');
                    if (state is IncrementStateC) {
                      return MainText(
                        text: state.counterC.toString(),
                        color: Colors.green,
                      );
                    } else if (state is DecrementStateC) {
                      return MainText(
                        text: state.counterC.toString(),
                        color: Colors.red,
                      );
                    }
                    return MainText(
                      text: state.counterC.toString(),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterCubitA>().decrement();
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
