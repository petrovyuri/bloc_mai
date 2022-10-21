import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

part 'counter_event.dart';

class CounterCubit extends Bloc<CounterEvent, CounterState> {
  CounterCubit() : super(const CounterInitialState()) {
    on<CounterChangedEvent>((event, emit) {
      emit(CounterChangeState(state.counter + 1));
    });
  }
}
