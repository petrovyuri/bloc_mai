import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitialState());

  void increment() {
    //  addError(Exception('TEST'), StackTrace.current);
    emit(CounterChangedState(state.counter + 1));
  }

  // @override
  // void onError(Object error, StackTrace stackTrace) {
  //   print("CounterCubit обработал ошибку: ${error.toString()} ");
  //   super.onError(error, stackTrace);
  // }
}
