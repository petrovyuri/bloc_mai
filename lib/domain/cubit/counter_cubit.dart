import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitialState());

  void increment() {
    // try {
    //   throw Exception("TEST");
    // } catch (e, stackTrace) {
    //   onError(e, stackTrace);
    // }
     emit(CounterIncrementState(state.counter + 1));
  }

  void decrement() => emit(CounterDecrementState(state.counter - 1));

  @override
  void onError(Object error, StackTrace stackTrace) {
    print("CounterCubit обработал ошибку: ${error.toString()} ");
    super.onError(error, stackTrace);
  }
}
