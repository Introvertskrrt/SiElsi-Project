import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class PembinaanView extends StatelessWidget {
  const PembinaanView({super.key});

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
        title: const Text(
          'Pembinaan',
          style: TextStyle(
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 18,
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border(
                      left: BorderSide(
                        color: ColorConstant.primaryColor,
                        width: 10,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/jadwal_agama.svg',
                        width: 25,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jadwal Pembinaan Agama',
                                  style:
                                      TextStyleConstant.nunitoRegular.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Jumat, 12 Februari 2021',
                                  style:
                                      TextStyleConstant.nunitoRegular.copyWith(
                                    fontSize: 12,
                                    color: ColorConstant.paragraphTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '09:00 - 11:00',
                              style: TextStyleConstant.nunitoRegular.copyWith(
                                fontSize: 12,
                                color: ColorConstant.paragraphTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border(
                      left: BorderSide(
                        color: ColorConstant.primaryColor,
                        width: 10,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/jadwal_fisik.svg',
                        width: 25,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jadwal Pembinaan Fisik',
                                  style:
                                      TextStyleConstant.nunitoRegular.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Jumat, 12 Februari 2021',
                                  style:
                                      TextStyleConstant.nunitoRegular.copyWith(
                                    fontSize: 12,
                                    color: ColorConstant.paragraphTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '09:00 - 11:00',
                              style: TextStyleConstant.nunitoRegular.copyWith(
                                fontSize: 12,
                                color: ColorConstant.paragraphTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border(
                      left: BorderSide(
                        color: ColorConstant.primaryColor,
                        width: 10,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/jadwal_vc.svg',
                        width: 25,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jadwal Video Call',
                                  style:
                                      TextStyleConstant.nunitoRegular.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Jumat, 12 Februari 2021',
                                  style:
                                      TextStyleConstant.nunitoRegular.copyWith(
                                    fontSize: 12,
                                    color: ColorConstant.paragraphTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '09:00 - 11:00',
                              style: TextStyleConstant.nunitoRegular.copyWith(
                                fontSize: 12,
                                color: ColorConstant.paragraphTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
