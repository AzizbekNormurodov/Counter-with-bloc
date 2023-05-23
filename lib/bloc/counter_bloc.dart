import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<IncrementEvent>(_incrementHandler);
    on<DecrementEvemt>(_decrementHandler);
  }

  FutureOr<void> _incrementHandler(
      IncrementEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  FutureOr<void> _decrementHandler(
    DecrementEvemt event,
    Emitter<CounterState> emit,
  ) { emit(state.copyWith(counter: state.counter-1));

  }
}
