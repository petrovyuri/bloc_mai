part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  const CounterState(this.counter);

  final int counter;
}

class CounterInitialState extends CounterState {
  const CounterInitialState() : super(0);
}

class CounterChangeState extends CounterState {
  const CounterChangeState(super.counter);
}
