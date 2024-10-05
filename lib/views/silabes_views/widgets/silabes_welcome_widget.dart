import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class SilabesWelcomeWidget extends StatelessWidget {
  const SilabesWelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: ColorConstant.primaryColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat datang di SiLabes",
              style: TextStyleConstant.nunitoBold.copyWith(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              "Anda dapat melihat informasi layanan besukan seperti tata tertib pengunjung, jadwal kunjungan, SOP dan lain-lain.",
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
