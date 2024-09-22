import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/controllers/sigagak_controller.dart';

class FilterWidget extends StatelessWidget {
  FilterWidget({super.key});

  final controller = Get.put(SigagakController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(4, (int index) {
            List<String> filterText = [
              "Semua Kegiatan",
              "Harian",
              "Mingguan",
              "Bulanan"
            ];

            return Padding(
              padding: const EdgeInsets.only(right: 20, top: 10),
              child: GestureDetector(
                onTap: () {
                  controller.selectFilter(index); // Set selected index
                },
                child: Obx(() {
                  bool isSelected = controller.selectedIndex.value == index;

                  return Container(
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.red : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isSelected ? Colors.red : ColorConstant.secondaryColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 10, right: 10),
                      child: Text(
                        filterText[index],
                        style: TextStyleConstant.nunitoRegular.copyWith(
                          color: isSelected ? Colors.white : ColorConstant.paragraphTextColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            );
          }),
        ),
      ),
    );
  }
}
