import 'package:bloc_mai/domain/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const _CounterScreenView(),
    );
  }
}

class _CounterScreenView extends StatelessWidget {
  const _CounterScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  BlocBuilder<CounterBloc, CounterState>(
                    builder: (context, state) {
                      return Text(
                        state.counter.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      );
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBloc>().add(CounterIncrementedEvent()),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBloc>().add(CounterDecrementedEvent()),
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
