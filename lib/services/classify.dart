import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Classifier {
  late File _image;

  pickImage(ImageSource imageSource) async {
    var image = await ImagePicker().pickImage(source: imageSource);
    _image = image as File;
  }
}
