part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterIncrementedEvent extends CounterEvent {}

class CounterDecrementedEvent extends CounterEvent {}
