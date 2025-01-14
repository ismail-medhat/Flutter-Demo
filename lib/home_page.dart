import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/cubit/counter_cubit.dart';
import 'package:flutter_demo/cubit/counter_state.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Team Points'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        drawer: const Drawer(),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ]),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text(
                '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  textColor: Colors.white,
                  height: 45,
                  color: Colors.deepOrange[400],
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context)
                        .teamIncrementPoints(team: 'A', buttonNumber: 1);
                  },
                  child: const Text("Increament A +1"),
                ),
                MaterialButton(
                  textColor: Colors.white,
                  height: 45,
                  color: Colors.deepOrange[400],
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context)
                        .teamIncrementPoints(team: 'B', buttonNumber: 1);
                  },
                  child: const Text("Increament B +1"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    textColor: Colors.white,
                    height: 45,
                    color: Colors.deepOrange[500],
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context)
                          .teamIncrementPoints(team: 'A', buttonNumber: 2);
                    },
                    child: const Text("Increament A +2"),
                  ),
                  MaterialButton(
                    textColor: Colors.white,
                    height: 45,
                    color: Colors.deepOrange[500],
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context)
                          .teamIncrementPoints(team: 'B', buttonNumber: 2);
                    },
                    child: const Text("Increament B +2"),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  textColor: Colors.white,
                  height: 45,
                  color: Colors.deepOrange[600],
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context)
                        .teamIncrementPoints(team: 'A', buttonNumber: 3);
                  },
                  child: const Text("Increament A +3"),
                ),
                MaterialButton(
                  textColor: Colors.white,
                  height: 45,
                  color: Colors.deepOrange[600],
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context)
                        .teamIncrementPoints(team: 'B', buttonNumber: 3);
                  },
                  child: const Text("Increament B +3"),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: MaterialButton(
                textColor: Colors.white,
                height: 45,
                color: Colors.deepOrange[800],
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetTeamsPoints();
                },
                child: const Text("Reset Team points"),
              ),
            )
          ],
        ),
      );
    }, listener: (context, state) {
      if (state is CounterAIncrementState) {
        // doSomthing...
      }
    });
  }
}
