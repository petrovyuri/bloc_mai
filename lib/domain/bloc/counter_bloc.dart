import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitialState(0)) {
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterIncrementState(state.counter + 1));
    });

    on<CounterDecrementPressed>((event, emit) {
      emit(CounterIncrementState(state.counter - 1));
    });
  }
}
