// dropdown_controller.dart
import 'package:get/get.dart';

class DropdownController extends GetxController {
  var country = ['Pakistan', 'India', 'USA', 'UK'];
  var selectedValue = 'Pakistan'.obs;

  void updateValue(String value) {
    selectedValue.value = value;
  }
}
