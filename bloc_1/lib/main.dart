import 'package:bloc_1/bloc/counter/counter_bloc.dart';
import 'package:bloc_1/bloc/imagePicker/picker_bloc.dart';
import 'package:bloc_1/bloc/notification/switch_bloc.dart';
import 'package:bloc_1/utils/image_picker_utils.dart';
import 'package:bloc_1/view/imagepickerclass.dart';
import 'package:bloc_1/view/sliderExample.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
  providers: [
    BlocProvider(create: (context) => ImagePickerBloc(ImagePickerUtils())),
    BlocProvider(create: (context) => CounterBloc()),
    BlocProvider(create: (context) => SwitchBloc()),
  ],
  child: const MaterialApp(
    home: Imagepickerclass(),
  ),
);
  }
}