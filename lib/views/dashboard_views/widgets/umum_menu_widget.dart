import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class UmumMenuWidget extends StatelessWidget {
  const UmumMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            "Layanan Umum",
            style: TextStyleConstant.nunitoBold.copyWith(fontSize: 20),
          ),
        ),
        const SizedBox(height: 30),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start, // Align to the top
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.sigagakPage);
                },
                child: buildMenuColumn(
                  "assets/icons/SiGagak.png",
                  "SiGagak",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.sinamuPage);
                },
                child: buildMenuColumn(
                  "assets/icons/SiNamu.png",
                  "SiNamu",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.socialmediaPage);
                },
                child: buildMenuColumn(
                  "assets/icons/Sosmed.png",
                  "Sosial Media",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  void errorSnackBar() {
    Get.snackbar(
      "Info", // Title of the Snackbar
      "Maaf, fitur ini sedang dalam pengembangan", // Message of the Snackbar
      snackPosition: SnackPosition.BOTTOM, // Position of the Snackbar
      backgroundColor: Colors.black87, // Background color
      colorText: Colors.white, // Text color
      borderRadius: 20,
      margin: const EdgeInsets.all(15),
      duration:
          const Duration(seconds: 3), // How long the Snackbar will be shown
    );
  }

  Widget buildMenuColumn(String iconPath, String text, Color bgColor, Color textColor) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180),
            color: bgColor,
            image: DecorationImage(
              image: AssetImage(iconPath),
            ),
          ),
        ),
        const SizedBox(height: 17),
        SizedBox(
          width: 80, // Set a fixed width for the text
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center, // Center align the text
              style: TextStyleConstant.nunitoBold.copyWith(
                color: textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
