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
      backgroundColor: Colors.white,
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Si'",
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 40,
                  color: Colors.black, // warna merah untuk 'Si'
                ),
              ),
              TextSpan(
                text: "eL",
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 40,
                  color: Colors.blue, // warna biru untuk 'eL'
                ),
              ),
              TextSpan(
                text: "Si",
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 40,
                  color: Colors.red, // warna merah untuk 'Si'
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
