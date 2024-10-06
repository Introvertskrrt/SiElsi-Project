import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class SocialmediaView extends StatelessWidget {
  const SocialmediaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // Default appBar height
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            centerTitle: true,
            backgroundColor: ColorConstant.primaryColor,
            title: Text(
              "SiNamu",
              style: TextStyleConstant.nunitoSemiBold
                  .copyWith(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo_sibesi.png"),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Ikuti Sosial Media ",
                    style: TextStyleConstant.nunitoParagraph.copyWith(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
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
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              height: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all<Color>(
                    ColorConstant.primaryColor,
                  ),
                ),
                onPressed: () {
                  // Button action here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/facebook.png", scale: 10),
                    const SizedBox(width: 5),
                    Text(
                      "Facebook",
                      style: TextStyleConstant.nunitoBold.copyWith(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              height: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all<Color>(
                    ColorConstant.primaryColor,
                  ),
                ),
                onPressed: () {
                  // Button action here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/instagram.png", scale: 10),
                    const SizedBox(width: 5),
                    Text(
                      "Instagram",
                      style: TextStyleConstant.nunitoBold.copyWith(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              height: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all<Color>(
                    ColorConstant.primaryColor,
                  ),
                ),
                onPressed: () {
                  // Button action here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/x.png", scale: 10),
                    const SizedBox(width: 5),
                    Text(
                      "X / Twitter",
                      style: TextStyleConstant.nunitoBold.copyWith(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
