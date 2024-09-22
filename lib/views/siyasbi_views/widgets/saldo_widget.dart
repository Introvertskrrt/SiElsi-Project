import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class SaldoWidget extends StatelessWidget {
  const SaldoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 9,
        right: 16,
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: ColorConstant.primaryBackground)),
            ),
            child: Text(
              'Saldo',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstant.secondaryColor,
              ),
              child: Column(
                children: [
                  Text(
                    'Saldo Tersedia',
                    style: TextStyleConstant.nunitoRegular.copyWith(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Rp 1.000.000',
                    style: TextStyleConstant.nunitoBold.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border(
                top: BorderSide(
                  color: ColorConstant.primaryBackground,
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saldo Masuk',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 12,
                        color: ColorConstant.paragraphTextColor,
                      ),
                    ),
                    Text(
                      'Rp 1.500.000',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 12,
                        color: ColorConstant.paragraphTextColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saldo Keluar',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 12,
                        color: ColorConstant.paragraphTextColor,
                      ),
                    ),
                    Text(
                      'Rp 500.000',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 12,
                        color: ColorConstant.paragraphTextColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Riwayat Saldo Masuk',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 12,
                        color: ColorConstant.paragraphTextColor,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: ColorConstant.primaryColor,
                          ),
                        ),
                      ),
                      child: Text(
                        'Download',
                        style: TextStyleConstant.nunitoRegular.copyWith(
                          fontSize: 12,
                          color: ColorConstant.primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Riwayat Saldo Keluar',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 12,
                        color: ColorConstant.paragraphTextColor,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: ColorConstant.primaryColor,
                          ),
                        ),
                      ),
                      child: Text(
                        'Download',
                        style: TextStyleConstant.nunitoRegular.copyWith(
                          fontSize: 12,
                          color: ColorConstant.primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Daftar Belanja Hari Ini',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 12,
                        color: ColorConstant.paragraphTextColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Lihat',
                          style: TextStyleConstant.nunitoRegular.copyWith(
                            fontSize: 12,
                            color: ColorConstant.primaryColor,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: ColorConstant.primaryColor,
                          size: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
