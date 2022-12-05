part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  const CounterState(this.counter);

  final int counter;
}

class CounterInitialState extends CounterState {
  const CounterInitialState() : super(0);
}

class CounterIncrementState extends CounterState {
  const CounterIncrementState(super.counter);
}
