import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitialState());

  void increment() => emit(CounterIncrementState(state.counter + 1));

  void decrement() => emit(CounterDecrementState(state.counter - 1));
}
