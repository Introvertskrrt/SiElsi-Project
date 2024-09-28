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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Aplikasi ",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 18),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Si'",
                        style: TextStyleConstant.nunitoBold.copyWith(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "eL",
                        style: TextStyleConstant.nunitoBold.copyWith(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text: "Si",
                        style: TextStyleConstant.nunitoBold.copyWith(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Si'",
                      style: TextStyleConstant.nunitoBold.copyWith(
                        fontSize: 14,
                        color: Colors.black, // warna merah untuk 'Si'
                      ),
                    ),
                    TextSpan(
                      text: "eL",
                      style: TextStyleConstant.nunitoBold.copyWith(
                        fontSize: 14,
                        color: Colors.blue, // warna biru untuk 'eL'
                      ),
                    ),
                    TextSpan(
                      text: "Si",
                      style: TextStyleConstant.nunitoBold.copyWith(
                        fontSize: 14,
                        color: Colors.red, // warna merah untuk 'Si'
                      ),
                    ),
                    TextSpan(
                      text:
                          " Aplikasi Layanan Inovasi Serta Pelayanan Terpadu Satu Pintu Lapas Kelas II A Besi Nusakambangan (Maximum Security) Untuk Melayani Sepenuh Hati, Bagi Masyarakat Dalam Mengakses Informasi Dengan Mudah, Cepat dan Transparan",
                      style: TextStyleConstant.nunitoParagraph.copyWith(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
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
                    style: TextStyleConstant.nunitoButton.copyWith(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
