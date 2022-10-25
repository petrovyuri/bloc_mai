import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitialState()) {
    // Increment
    on<CounterIncrementedEvent>((event, emit) {
      emit(CounterIncrementState(state.counter + 1));
    });

    // Decrement
    on<CounterDecrementedEvent>((event, emit) {
      emit(CounterDecrementState(state.counter - 1));
    });
  }
}
