import 'dart:io';

import 'package:bloc_1/bloc/imagePicker/picker_bloc.dart';
import 'package:bloc_1/bloc/imagePicker/picker_event.dart';
import 'package:bloc_1/bloc/imagePicker/picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Imagepickerclass extends StatefulWidget {
  const Imagepickerclass({super.key});

  @override
  State<Imagepickerclass> createState() => _ImagepickerclassState();
}

class _ImagepickerclassState extends State<Imagepickerclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Picker")),
      body: Center(
        child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
          builder: (context, states) {
            if (states.file == null) {
              return InkWell(
                onTap: () {
                  context.read<ImagePickerBloc>().add(selectCameraImage());
                },
                child: const CircleAvatar(
                  radius: 40,
                  child: Icon(Icons.camera_alt),
                ),
              );
            } else {
              return Image.file(File(states.file!.path));
            }
          },
        ),
      ),
    );
  }
}
