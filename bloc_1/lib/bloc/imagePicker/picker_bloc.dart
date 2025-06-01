import 'package:bloc_1/bloc/imagePicker/picker_event.dart';
import 'package:bloc_1/bloc/imagePicker/picker_state.dart';
import 'package:bloc_1/utils/image_picker_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent , ImagePickerState>{
  final ImagePickerUtils imgpickerUtils;
  ImagePickerBloc(this.imgpickerUtils):super(ImagePickerState()){
    on<selectCameraImage>(cameraCapture);
  }

  void cameraCapture (selectCameraImage event , Emitter<ImagePickerState> emit)async{
XFile? file = await imgpickerUtils.cameraCapture();
emit(state.copyWith(file: file));
  }
}