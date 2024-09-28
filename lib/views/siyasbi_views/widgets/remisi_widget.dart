import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/color_constant.dart';
import '../../../constants/text_style_constant.dart';

class RemisiWidget extends StatelessWidget {
  const RemisiWidget({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
              'Remisi',
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(5),
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
                children: [
                  SvgPicture.asset('assets/svg/sisa_pidana.svg',
                      width: 50, height: 50),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sisa pidana setelah remisi',
                        style: TextStyleConstant.nunitoRegular.copyWith(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '3 Tahun 3 Bulan',
                        style: TextStyleConstant.nunitoRegular.copyWith(
                          fontSize: 12,
                          color: ColorConstant.paragraphTextColor,
                        ),
                      ),
                    ],
                  )
                ],
              )),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
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
              children: [
                SvgPicture.asset('assets/svg/tanggal_bebas.svg',
                    width: 50, height: 50),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tanggal bebas menjalani pidana',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '12 Februari 2025',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 10,
                        color: ColorConstant.paragraphTextColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 5, left: 5),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: ColorConstant.primaryBackground)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/riwayat_remisi.svg',
                        width: 20, height: 22),
                    const SizedBox(width: 8),
                    Text(
                      'Riwayat Remisi',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Selengkapnya',
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: ColorConstant.primaryColor,
                      size: 8,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
