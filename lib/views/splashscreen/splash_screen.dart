import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(AppRoutes.introPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'SI',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 36,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: '\'',
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 36,
                  color: ColorConstant.primaryColor,
                ),
              ),
              TextSpan(
                text: 'eL',
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 36,
                  color: Colors.blueAccent,
                ),
              ),
              TextSpan(
                text: 'Si',
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 36,
                  color: ColorConstant.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
