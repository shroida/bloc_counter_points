import 'package:blo/cubit/counter_cubit.dart';
import 'package:blo/cubit/counter_cubit_state.dart';
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
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterPointsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text('Score Keeper'),
            backgroundColor: Colors.blueAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Team A column
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Team A',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              BlocProvider.of<CounterCubit>(context)
                                  .teamAPoints
                                  .toString(),
                              style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamAPointsIncrement(1);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 10),
                                backgroundColor: Colors.blueAccent,
                              ),
                              child: const Text(
                                '+1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamAPointsIncrement(2);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 10),
                                backgroundColor: Colors.blueAccent,
                              ),
                              child: const Text(
                                '+2',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamAPointsIncrement(3);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 10),
                                backgroundColor: Colors.blueAccent,
                              ),
                              child: const Text(
                                '+3',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const VerticalDivider(color: Colors.black, thickness: 1),
                      // Team B column
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Team B',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              BlocProvider.of<CounterCubit>(context)
                                  .teamBPoints
                                  .toString(),
                              style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamBPointsIncrement(1);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 10),
                                backgroundColor: Colors.blueAccent,
                              ),
                              child: const Text(
                                '+1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamBPointsIncrement(2);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 10),
                                backgroundColor: Colors.blueAccent,
                              ),
                              child: const Text(
                                '+2',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamBPointsIncrement(3);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 10),
                                backgroundColor: Colors.blueAccent,
                              ),
                              child: const Text(
                                '+3',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      BlocProvider.of<CounterCubit>(context).teamAPoints = 0;
                      BlocProvider.of<CounterCubit>(context).teamBPoints = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                  child: const Text(
                    'Reset Scores',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
