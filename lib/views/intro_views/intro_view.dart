import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Stack with circles
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  // First circle
                  Positioned(
                    top: -150,
                    left: -50,
                    child: CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.red.withOpacity(0.5),
                    ),
                  ),
                  // Second circle
                  Positioned(
                    top: -50,
                    left: -150,
                    child: CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.red.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/images/logo_sibesi.png'),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: 'APLIKASI SI',
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: '\'',
                    style: TextStyleConstant.nunitoBold.copyWith(
                      fontSize: 18,
                      color: ColorConstant.primaryColor,
                    ),
                  ),
                  TextSpan(
                    text: 'eL',
                    style: TextStyleConstant.nunitoBold.copyWith(
                      fontSize: 18,
                      color: Colors.blueAccent,
                    ),
                  ),
                  TextSpan(
                    text: 'Si',
                    style: TextStyleConstant.nunitoBold.copyWith(
                      fontSize: 18,
                      color: ColorConstant.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'SI',
                  style: TextStyleConstant.nunitoParagraph.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '\'',
                      style: TextStyleConstant.nunitoParagraph.copyWith(
                        fontSize: 14,
                        color: ColorConstant.primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: 'eL',
                      style: TextStyleConstant.nunitoParagraph.copyWith(
                        fontSize: 14,
                        color: Colors.blueAccent,
                      ),
                    ),
                    TextSpan(
                      text: 'Si',
                      style: TextStyleConstant.nunitoParagraph.copyWith(
                        fontSize: 14,
                        color: ColorConstant.primaryColor,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' Aplikasi Layanan Inovasi Serta Pelayanan Terpadu Satu Pintu Lapas Kelas IIA Besi Nusakambangan (Maximum Security) Untuk Melayani Sepenuh Hati\, Bagi Masyarakat Dalam Mengakses Informasi Dengan Mudah, Cepat dan Transparan',
                      style: TextStyleConstant.nunitoParagraph.copyWith(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 25,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      ColorConstant.primaryColor,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(AppRoutes.dashboardUmumPage);
                  },
                  child: Text(
                    "Memulai",
                    style:
                        TextStyleConstant.nunitoButton.copyWith(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
