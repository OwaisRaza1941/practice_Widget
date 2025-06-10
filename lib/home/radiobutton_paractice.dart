import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paractice/controllers/radio_controller.dart';

class RadiobuttonPractice extends StatelessWidget {
  const RadiobuttonPractice({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller initialize karo
    final RadioController controller = Get.put(RadioController());

    return Scaffold(
      appBar: AppBar(title: Text("Radio Button Practice")),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.lightbulb_outline,
                  size: 30,
                  color: controller.selectedColor.value,
                ),
              ),
              ListTile(
                title: Text("Green"),
                leading: Radio(
                  value: "Green",
                  groupValue: controller.selectedGender.value,
                  onChanged: (value) {
                    controller.selectedColor.value;
                    controller.changeGender(value!);
                  },
                ),
              ),
              ListTile(
                title: Text("Red"),
                leading: Radio(
                  value: "Red",
                  groupValue: controller.selectedGender.value,
                  onChanged: (value) {
                    controller.selectedColor.value;
                    controller.changeGender(value!);
                  },
                ),
              ),
              SizedBox(height: 20),
              Text("Selected Color: ${controller.selectedGender.value}"),
            ],
          ),
        ),
      ),
    );
  }
}
