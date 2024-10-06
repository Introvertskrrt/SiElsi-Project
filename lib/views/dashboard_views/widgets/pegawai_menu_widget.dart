import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';
import 'package:url_launcher/url_launcher.dart';

class PegawaiMenuWidget extends StatelessWidget {
  const PegawaiMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            "Kepegawaian",
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
                  Get.toNamed(AppRoutes.siprofilPage);
                },
                child: buildMenuColumn(
                  "assets/icons/SiProfil.png",
                  "SI PROFIL",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  errorSnackBar();
                },
                child: buildMenuColumn(
                  "assets/icons/SiColling.png",
                  "SI COLLING",
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
                  "SI WATESI",
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
                  Get.toNamed(AppRoutes.teladanPage);
                },
                child: buildMenuColumn(
                  "assets/icons/Pengaduan.png",
                  "PENGADUAN",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  errorSnackBar();
                },
                child: buildMenuColumn(
                  "assets/icons/SIMPEG.png",
                  "SIMPEG KUMHAM",
                  ColorConstant.secondaryColor,
                  ColorConstant.paragraphTextColor,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final Uri url = Uri.parse(
                      'https://survei-bsk.kemenkumham.go.id/ly/VCqZJPAv');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: buildMenuColumn(
                  "assets/icons/survey.png",
                  "SI IKEP",
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
