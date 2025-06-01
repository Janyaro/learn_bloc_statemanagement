
import 'package:equatable/equatable.dart';

class SwitchState extends Equatable{
  final bool isswitch;
  final double slider;
  const SwitchState({ this.isswitch = false , this.slider = 1.0});
  
  SwitchState copyWith ({bool? isswitch , double? slider}){
    return SwitchState(
      isswitch: isswitch ?? this.isswitch,
      slider :slider ?? this.slider
    );
  }

  List<Object?> get props => [isswitch];
} 