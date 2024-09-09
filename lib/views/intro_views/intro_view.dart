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
            Text(
              "Trust everything with Si'BESI",
              style: TextStyleConstant.nunitoBold.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: Text(
                "Si’Elsi merupakan pelayanan sipil dan pelayanan publik, khususnya bagi masyarakat sekitar atau masyarakat luas.",
                style: TextStyleConstant.nunitoParagraph.copyWith(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 80),
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
