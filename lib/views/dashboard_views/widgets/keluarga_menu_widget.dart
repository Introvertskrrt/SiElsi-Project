import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class KeluargaMenuWidget extends StatelessWidget {
  const KeluargaMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            "Layanan Masyarakat",
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
                  Get.toNamed(AppRoutes.siyasbiPage);
                },
                child: buildMenuColumn(
                  "assets/icons/Siyasbi.png",
                  "SIYASBI",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.bemartPage);
                },
                child: buildMenuColumn(
                  "assets/icons/BeMart.png",
                  "Be'Mart",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.teladanPage);
                },
                child: buildMenuColumn(
                  "assets/icons/Teladan.png",
                  "Teladan",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 27),
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
                  Get.toNamed(AppRoutes.silabesPage);
                },
                child: buildMenuColumn(
                  "assets/icons/Silabes.png",
                  "SiLabes",
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
                  "Social Media",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 27),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start, // Align to the top
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.kepuasanPage);
                },
                child: buildMenuColumn(
                  "assets/icons/Kepuasan.png",
                  "Kepuasan",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  errorSnackBar();
                },
                child: buildMenuColumn(
                  "assets/icons/Pengaduan.png",
                  "Pengaduan",
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

  Widget buildMenuColumn(
      String iconPath, String text, Color bgColor, Color textColor) {
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
