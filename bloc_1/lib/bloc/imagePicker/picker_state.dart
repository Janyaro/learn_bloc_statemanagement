

import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerState extends Equatable{
 final XFile? file;
 ImagePickerState({this.file});

 ImagePickerState copyWith ({ XFile? file}){
  return ImagePickerState(
    file: file ?? this.file
  );
 }

  List<Object?> get props => [file];
}