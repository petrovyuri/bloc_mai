import 'package:bloc_mai/ui/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MaterialApp(home: CounterScreen()));
}
