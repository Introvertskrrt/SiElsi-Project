import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:url_launcher/url_launcher.dart';

class KepuasanView extends StatelessWidget {
  const KepuasanView({super.key});

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
              "Kepuasan",
              style: TextStyleConstant.nunitoSemiBold
                  .copyWith(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async {
            final Uri url = Uri.parse('https://survei-bsk.kemenkumham.go.id/ly/wS7M6bEy');
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          child: Container(
            width: 260,
            height: 80,
            decoration: BoxDecoration(
              color: ColorConstant.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "ISI SURVEY KLIK DISINI",
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
