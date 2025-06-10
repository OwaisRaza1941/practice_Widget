import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RadioController extends GetxController {
  // yeh reactive variable banaya jo groupValue ka kaam karega
  var selectedGender = "Green".obs;
  
  var selectedColor = Colors.green.obs;

  void changeGender(String gender) {
    selectedGender.value = gender;
    if (gender == "Green") {
      selectedColor.value = Colors.green;
    } else if (gender == "Red") {
      selectedColor.value = Colors.red;
    }
  }
}
