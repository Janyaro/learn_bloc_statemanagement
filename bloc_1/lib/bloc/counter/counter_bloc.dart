import 'package:bloc_1/bloc/counter/counter_event.dart';
import 'package:bloc_1/bloc/counter/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent , CounterState>{

  CounterBloc():super(CounterState()){
    on<IncraseCounter>(_increment);
    on<DecraseCounter>(_decrement);
  }
  void _increment(IncraseCounter event , Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter +1 )); }

  void _decrement(DecraseCounter event , Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter -1));
  }
}