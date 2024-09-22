import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/controllers/sigagak_controller.dart';

class ImageCarouselWidget extends StatelessWidget {
  ImageCarouselWidget({super.key});

  final controller = Get.put(SigagakController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: controller.imagePaths.map((imagePath) {
            return Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            );
          }).toList(),
          options: CarouselOptions(
            height: 400, // Adjust as needed
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.0, // Full width images
            onPageChanged: (index, reason) {
              controller.changePage(index);
            },
          ),
        ),
        Positioned(
          bottom: 20, // Positioning the dots at the bottom of the image
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: controller.imagePaths.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => controller.changePage(entry.key),
                child: Obx(() => Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.imageIndex.value == entry.key
                            ? ColorConstant.primaryColor // Active dot color
                            : ColorConstant
                                .primaryBackground, // Inactive dot color
                      ),
                    )),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
