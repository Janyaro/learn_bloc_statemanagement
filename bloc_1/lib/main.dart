import 'package:bloc_1/bloc/counter/counter_bloc.dart';
import 'package:bloc_1/view/counter_screen.dart';
import 'package:bloc_1/view/example_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => CounterBloc(),
      child: const MaterialApp(
      home: CounterScreen(),
    ),
    );
  }
}