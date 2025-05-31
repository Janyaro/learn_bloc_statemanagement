import 'package:bloc_1/bloc/counter/counter_bloc.dart';
import 'package:bloc_1/bloc/counter/counter_event.dart';
import 'package:bloc_1/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc , CounterState>(builder: (context , state){
            return Center(child: Text(state.counter.toString() , style: TextStyle(fontSize: 60),));
          },),
          
         
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          TextButton(onPressed: (){
            context.read<CounterBloc>().add(IncraseCounter());
            print("hit counter");
          }, child:const Text("Increment")),
          TextButton(onPressed: (){
          context.read<CounterBloc>().add(DecraseCounter());
          }, child:const Text("decrement")),
        ],)
        ],
      ),
      
    );
  }
}