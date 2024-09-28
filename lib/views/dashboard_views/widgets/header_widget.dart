import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 286,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/foto_depan_lapas.jpg"),
          fit: BoxFit.fill,
        ),
        color: ColorConstant.primaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none, // Allow overflow in Stack
        children: [
          Positioned(
            top: 53,
            right: 23,
            child: InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.loginRolePage);
              },
              child: Text(
                "Masuk",
                style: TextStyleConstant.nunitoBold.copyWith(
                  color: ColorConstant.primaryColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: 122,
            left: 32,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Sugeng Rawuh Sederek Dhayoh\n",
                    style: TextStyleConstant.nunitoBold.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text:
                        "Di Layanan Si ‘eLSi Lapas\nKelas II A Besi Nusakambangan",
                    style: TextStyleConstant.nunitoBold.copyWith(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 45,
            left: 32,
            child: SizedBox(
              width: 230,
              child: Text(
                "Lembaga Pemasyarakatan Kelas II A Nusakambangan",
                style: TextStyleConstant.nunitoRegular.copyWith(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          // Properly positioned the image
          Positioned(
            right: 5, // Move it slightly outside the container
            bottom: -50, // Position it at the bottom
            child: Image.asset(
              'assets/images/police.png',
              height: 200, // Adjust the height if needed
            ),
          ),
        ],
      ),
    );
  }
}
