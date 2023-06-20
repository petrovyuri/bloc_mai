part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  final int counter;
  const CounterState(this.counter);
}

final class CounterInitialState extends CounterState {
  const CounterInitialState(super.counter);

  @override
  List<Object?> get props => [counter];
}

final class CounterIncrementState extends CounterState {
  const CounterIncrementState(super.counter);

  @override
  List<Object?> get props => [counter];
}

final class CounterDecrementState extends CounterState {
  const CounterDecrementState(super.counter);

  @override
  List<Object?> get props => [counter];
}
