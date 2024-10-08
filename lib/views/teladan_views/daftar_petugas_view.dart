import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/views/teladan_views/widgets/daftar_petugas_widget.dart';
import 'package:sibesi_app/views/teladan_views/widgets/search_bar_widget.dart';
import 'package:sibesi_app/views/teladan_views/widgets/header_widget.dart';

class DaftarPetugasView extends StatelessWidget {
  const DaftarPetugasView({super.key});

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
          'Teladan',
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
        child: Column(
          children: [
            SizedBox(height: 20),
            HeaderWidget(),
            SizedBox(height: 20),
            SearchBarWidget(),
            SizedBox(height: 15),
            DaftarPetugasWidget()
          ],
        ),
      ),
    );
  }
}
