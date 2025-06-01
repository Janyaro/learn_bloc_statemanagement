import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable{
  ImagePickerEvent();

  List<Object?> get props => [];
}

class selectCameraImage extends ImagePickerEvent{}
class selectGalleryImage extends ImagePickerEvent{}