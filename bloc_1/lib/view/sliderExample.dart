import 'package:bloc_1/bloc/notification/switch_bloc.dart';
import 'package:bloc_1/bloc/notification/switch_event.dart';
import 'package:bloc_1/bloc/notification/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Sliderexample extends StatefulWidget {
  const Sliderexample({super.key});

  @override
  State<Sliderexample> createState() => _SliderexampleState();
}

class _SliderexampleState extends State<Sliderexample> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        
          Text('Notification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         BlocBuilder<SwitchBloc, SwitchState>(
          builder: (context, state) {
            return Switch(value: state.isswitch, onChanged: (newVal){
              context.read<SwitchBloc>().add(EnableorDisableNotification());
          });

          },
         )
         
                      ],
          ),
          SizedBox(height: 20,),
        
        BlocBuilder<SwitchBloc, SwitchState>(
          builder: (context, state) {
            return Container(
            height: 200,
            color: Colors.red.withOpacity(state.slider),
          );
          },
        ),
          BlocBuilder<SwitchBloc,SwitchState>(builder: (context , state){
            return Slider(value: state.slider, onChanged: (val){
          context.read<SwitchBloc>().add(SliderEvent(slider: val));
              print(val);
          });
          })
          
        ],
              ),
      ),
    );
  }
}