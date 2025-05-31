import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable{
  const CounterEvent();
  List<Object?> get props => [];
}

class IncraseCounter extends CounterEvent{}
class DecraseCounter extends CounterEvent{}