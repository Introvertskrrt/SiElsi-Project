import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class TeladanView extends StatelessWidget {
  const TeladanView({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuCard(
                iconPath: 'assets/svg/pegawai_teladan.svg',
                title: 'Lihat Pegawai Teladan',
                onPressed: () {},
              ),
              const SizedBox(height: 30),
              MenuCard(
                iconPath: 'assets/svg/daftar_petugas.svg',
                title: 'Lihat Daftar Petugas',
                onPressed: () {
                  Get.toNamed(AppRoutes.daftarPetugasPage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onPressed;

  const MenuCard({
    required this.iconPath,
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 23),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(iconPath, width: 30, height: 30),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                style: TextStyleConstant.nunitoSemiBold.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 20,
            ),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
