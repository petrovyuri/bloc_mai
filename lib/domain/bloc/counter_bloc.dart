import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitialState()) {
    on<CounterIncrementedEvent>((event, emit) {
      emit(CounterChangeState(state.counter + 1));
    });
  }
}
