import 'package:get/get.dart';

class SwitchController extends GetxController {
  bool isDarkMode = false;

  void changeMode(bool value) {
    isDarkMode = value;
    update();
  }
}
