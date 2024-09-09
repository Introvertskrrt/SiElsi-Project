import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/controllers/login_controller.dart';
// ignore: unused_import
import 'package:sibesi_app/utils/app_routes.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

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
              "Welcome back!",
              style: TextStyleConstant.nunitoBold.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 25),
            Image.asset('assets/images/login_image.png'),
            const SizedBox(height: 58),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Adding a subtle shadow
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 2), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.email.value = value;
                    },
                    style: TextStyleConstant.nunitoRegular.copyWith(
                      fontSize: 16,
                      color: ColorConstant.paragraphTextColor,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Masukan email anda',
                      hintStyle: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 16,
                        color:
                            ColorConstant.paragraphTextColor.withOpacity(0.6),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 18),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 34),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Adding a subtle shadow
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 2), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.password.value = value;
                    },
                    style: TextStyleConstant.nunitoRegular.copyWith(
                      fontSize: 16,
                      color: ColorConstant.paragraphTextColor,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Masukan kata sandi',
                      hintStyle: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 16,
                        color:
                            ColorConstant.paragraphTextColor.withOpacity(0.6),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 18),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 34),
            Text(
              "Lupa kata sandi?",
              style: TextStyleConstant.nunitoRegular.copyWith(fontSize: 16, color: ColorConstant.secondaryColor),
            ),
            const SizedBox(height: 16),
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
                    await controller.authLocal();
                  },
                  child: Text(
                    "Masuk",
                    style:
                        TextStyleConstant.nunitoButton.copyWith(fontSize: 20),
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
