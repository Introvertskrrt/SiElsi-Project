import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/controllers/login_controller.dart';
// ignore: unused_import
import 'package:sibesi_app/utils/app_routes.dart';

class LoginRoleView extends StatelessWidget {
  LoginRoleView({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
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
            Text(
              "Login Pengguna",
              style: TextStyleConstant.nunitoBold.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 25),
            Image.asset('assets/images/login_image.png'),
            const SizedBox(height: 58),
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
                  onPressed: () async {
                    Get.toNamed(AppRoutes.loginMasyarakatPage);
                  },
                  child: Text(
                    "Masyarakat",
                    style:
                        TextStyleConstant.nunitoButton.copyWith(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
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
                  onPressed: () async {
                    Get.toNamed(AppRoutes.loginPegawaiPage);
                  },
                  child: Text(
                    "Pegawai",
                    style:
                        TextStyleConstant.nunitoButton.copyWith(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
