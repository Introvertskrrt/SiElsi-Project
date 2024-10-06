import 'package:flutter/material.dart';

import '../../../constants/color_constant.dart';
import '../../../constants/text_style_constant.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 10,
        left: 16,
        right: 16,
        bottom: 19,
      ),
      color: ColorConstant.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selamat Datang di Teladan!',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            'Masyarakat dapat mengisi dan menilai pelayanan yang diterima oleh petugas lapas besi.',
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 14,
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
