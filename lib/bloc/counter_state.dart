part of 'counter_bloc.dart';

class CounterState {
  int counter;

  CounterState({required this.counter});

  CounterState copyWith({int? counter}) => CounterState(
        counter: counter ?? this.counter,
      );
}
