import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paractice/controllers/dropdown_controller.dart';

class DropdownParactice extends StatelessWidget {
  const DropdownParactice({super.key});

  @override
  Widget build(BuildContext context) {
    DropdownController controller = Get.put(DropdownController());

    return Scaffold(
      appBar: AppBar(title: Text('Dropdown Practice')),
      body: Center(
        child: Obx(
          () => Container(
            width: 250,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.blue),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              value: controller.selectedValue.value,
              onChanged: (newValue) {
                controller.updateValue(newValue!);
              },
              underline: SizedBox(),
              items:
                  controller.country.map((countryName) {
                    return DropdownMenuItem(
                      value: countryName,
                      child: Text(countryName),
                    );
                  }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
