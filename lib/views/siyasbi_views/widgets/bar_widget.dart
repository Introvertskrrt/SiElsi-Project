import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class BarWidget extends StatelessWidget {
  const BarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.profiletahananPage);
            },
            child: Column(
              children: [
                SvgPicture.asset('assets/svg/profile.svg',
                    width: 30, height: 30),
                const SizedBox(height: 8),
                Text(
                  'Profile',
                  style: TextStyleConstant.nunitoRegular.copyWith(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SvgPicture.asset('assets/svg/pembinaan.svg', width: 30),
              const SizedBox(height: 8),
              Text(
                'Pembinaan',
                style: TextStyleConstant.nunitoRegular.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset('assets/svg/kesehatan.svg', width: 30),
              const SizedBox(height: 8),
              Text(
                'Kesehatan',
                style: TextStyleConstant.nunitoRegular.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.pesanPage);
            },
            child: Column(
              children: [
                SvgPicture.asset('assets/svg/message.svg', width: 30),
                const SizedBox(height: 8),
                Text(
                  'Kirim Pesan',
                  style: TextStyleConstant.nunitoRegular.copyWith(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
