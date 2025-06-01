import 'package:bloc_1/bloc/notification/switch_event.dart';
import 'package:bloc_1/bloc/notification/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchBloc extends Bloc<SwitchEvent,SwitchState>{
  SwitchBloc():super(SwitchState()){
    on<EnableorDisableNotification>(_enableSwitch);
    on<SliderEvent>(_slider);
  }
  void _enableSwitch(EnableorDisableNotification event , Emitter<SwitchState>emit){
    emit(state.copyWith(isswitch:!state.isswitch) );
  }

  void _slider (SliderEvent event , Emitter<SwitchState> emit){
    emit(state.copyWith(slider: event.slider));

  }
}