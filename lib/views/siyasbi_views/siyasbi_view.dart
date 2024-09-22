import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/views/siyasbi_views/widgets/saldo_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/bar_widget.dart';
import 'widgets/remisi_widget.dart';

class SiyasbiView extends StatelessWidget {
  const SiyasbiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'SiYASBI',
          style: TextStyleConstant.nunitoSemiBold.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorConstant.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                children: [
                  SizedBox(height: 18),
                  HeaderWidget(),
                  SizedBox(height: 18),
                  BarWidget(),
                  SizedBox(height: 18),
                  RemisiWidget(),
                  SizedBox(height: 18),
                  const SaldoWidget(),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
