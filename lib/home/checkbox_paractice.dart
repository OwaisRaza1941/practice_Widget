import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paractice/controllers/checkbox_controller.dart';

class CheckboxParactice extends StatelessWidget {
  CheckboxParactice({super.key});

  final CheckboxController controller = Get.put(CheckboxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CheckboxController>(
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Checkbox(
                    value: controller.valueCheckBox,
                    onChanged: (newValue) {
                      controller.updateValue(newValue!);
                    },
                  ),
                  title: Text("Apple"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
