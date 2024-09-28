import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94,
      decoration: BoxDecoration(color: ColorConstant.primaryColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat datang di SiNamu",
              style: TextStyleConstant.nunitoBold.copyWith(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              "Sebelum berkunjung ke dalam lapas, anda wajib mengisi data diri serta keperluan anda.",
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
