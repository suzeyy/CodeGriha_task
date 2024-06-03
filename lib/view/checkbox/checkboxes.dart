import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:codegriha_task/view/checkbox/checkbox_controller.dart';

class CheckBoxes extends StatelessWidget {
  const CheckBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    final checkboxController = Get.put(CheckBoxController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous page
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Obx(() {
          return ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Checkbox First'),
                  Checkbox(
                    value: checkboxController.isChecked.value,
                    onChanged: (newValue) {
                      if (newValue != null) {
                        checkboxController.handleCheckBoxState(
                            newCheckBoxValue: newValue);
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Checkbox Second'),
                  Checkbox(
                    value: checkboxController.isCheckedSecond.value,
                    onChanged: (newValue) {
                      if (newValue != null) {
                        checkboxController.handleSecondCheckBoxState(
                            newCheckBoxValue: newValue);
                      }
                    },
                  ),
                ],
              )
            ],
          );
        }),
      ),
    );
  }
}
