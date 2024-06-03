import 'package:get/get.dart';

class CheckBoxController extends GetxController {
  var isChecked = false.obs;
  var isCheckedSecond = false.obs;

  ///function to change the state of checkbox
  handleCheckBoxState({required bool newCheckBoxValue}) {
    isChecked.value = newCheckBoxValue;
  }

  ///function to change the state of second checkbox
  handleSecondCheckBoxState({required bool newCheckBoxValue}) {
    isCheckedSecond.value = newCheckBoxValue;
  }
}
