part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {}

/// Событие увеличения счетчика
final class CounterIncrementPressed extends CounterEvent {
  CounterIncrementPressed();
  @override
  List<Object?> get props => [];
}

/// Событие уменьшения счетчика
final class CounterDecrementPressed extends CounterEvent {
  CounterDecrementPressed();

  @override
  List<Object?> get props => [];
}
