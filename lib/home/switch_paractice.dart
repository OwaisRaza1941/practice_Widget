import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paractice/controllers/switch_controller.dart';

class SwitchParactice extends StatelessWidget {
  SwitchParactice({super.key});

  final SwitchController controller = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SwitchController>(
      builder: (context) {
        return Scaffold(
          backgroundColor: controller.isDarkMode ? Colors.black : Colors.white,
          appBar: AppBar(
            backgroundColor:
                controller.isDarkMode ? Colors.white : Colors.lightBlue,
            title: Text("Switch Paractice"),
            actions: [
              Switch(
                value: controller.isDarkMode,
                onChanged: (userValue) {
                  controller.changeMode(userValue);
                },
              ),
            ],
          ),
          body: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            padding: EdgeInsets.all(16),
            children: List.generate(4, (index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                      controller.isDarkMode
                          ? Colors.teal
                          : Color.fromARGB(188, 169, 131, 17),
                ),
                child: Center(
                  child: Text(
                    controller.isDarkMode
                        ? 'Dark ${index + 1}'
                        : 'Light ${index + 1}',
                    style: TextStyle(
                      color:
                          controller.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
