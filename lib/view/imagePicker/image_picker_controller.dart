import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerController extends GetxController {
  var image = File("").obs;
  final _picker = ImagePicker();
  //final galleryImage = "".obs;
  var memoryImage = Uint8List.fromList([]).obs;
  String imageExtension = "png";

  void pickImageFromGallery() async {
    if (kIsWeb) {
      var localImage = await _picker.pickImage(
          source: ImageSource.gallery, imageQuality: 50);

      if (localImage != null) {
        imageExtension = localImage.name.split('.').last;

        memoryImage.value = await localImage.readAsBytes();
        memoryImage.refresh();
        update();
      }
    } else {
      print('Hello this is second part');
      //final permResult = await Permission.storage.request();
      var localImage = await _picker.pickImage(
          source: ImageSource.gallery, imageQuality: 50);

      if (localImage != null) {
        imageExtension = localImage.name.split('.').last;
        image.value = File(localImage.path);
        image.refresh();
        update();
      }
    }
  }
}
