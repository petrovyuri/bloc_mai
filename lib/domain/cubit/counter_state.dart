part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  const CounterState(this.counter);

  final int counter;
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(0);
}

class CounterChanged extends CounterState {
  const CounterChanged(super.counter);
}
