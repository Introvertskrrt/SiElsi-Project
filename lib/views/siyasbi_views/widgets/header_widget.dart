import 'package:flutter/material.dart';

import '../../../constants/color_constant.dart';
import '../../../constants/text_style_constant.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorConstant.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            'SELAMAT DATANG DI SISTEM INFORMASI PELAYANAN SEPUTAR WARGA BINAAN',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 14,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            'LAPAS KELAS II A BESI NUSAKAMBANGAN',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 12,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
