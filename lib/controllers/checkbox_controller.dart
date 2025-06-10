import 'package:get/get.dart';

class CheckboxController extends GetxController {
  bool valueCheckBox = false;

  updateValue(bool value) {
    valueCheckBox = value;
    update();
  }
}
