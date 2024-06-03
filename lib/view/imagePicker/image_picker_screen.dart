import 'package:codegriha_task/view/imagePicker/image_picker_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePickerController = Get.put(ImagePickerController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous page
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Obx(() {
        return ListView(
          children: [
            imagePickerController.memoryImage.value.isNotEmpty
                ? kIsWeb
                    ? Image.memory(
                        imagePickerController.memoryImage.value,
                        height: 200,
                        width: 200,
                      )
                    : Image.file(
                        imagePickerController.image.value,
                        width: 200,
                        height: 200,
                      )
                : Text('Pick an image to get started...',
                    style: TextStyle(fontSize: 16)),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => imagePickerController.pickImageFromGallery(),
              child: const Text('Pick Image'),
            ),
          ],
        );
      }),
    );
  }
}
