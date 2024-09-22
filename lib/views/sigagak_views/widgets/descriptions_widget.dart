import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class DescriptionsWidget extends StatelessWidget {
  const DescriptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Center(
          child: Text(
            "Pembinaan di Blok A oleh KASI BINADIK",
            style: TextStyleConstant.nunitoBold.copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyleConstant.nunitoRegular.copyWith(fontSize: 14),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 30),
        Text(
          "Detail Kegiatan",
          style: TextStyleConstant.nunitoBold.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 5),
        Divider(
          height: 1,
          color: ColorConstant.primaryBackground,
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Text(
              "Jenis Kegiatan",
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Text(
              "Harian",
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(
              "Kamar Binaan",
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Text(
              "Kamar X",
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(
              "Penanggung Jawab",
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Text(
              "Rizky Nugroho",
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        )
      ],
    );
  }
}
