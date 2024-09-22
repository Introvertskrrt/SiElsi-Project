import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class SigagakContentCardGlobalWidget extends StatelessWidget {
  const SigagakContentCardGlobalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset(
              "assets/images/pembinaan1.jpg",
              width: 100,
              height: 76,
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 17),
                Text(
                  "Pembinaan di Blok A oleh KASI BINADIK",
                  style: TextStyleConstant.nunitoSemiBold.copyWith(fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  "Kamar X",
                  style: TextStyleConstant.nunitoSemiBold.copyWith(
                    color: ColorConstant.paragraphTextColor,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "Kegiatan Harian",
                      style: TextStyleConstant.nunitoSemiBold.copyWith(
                        color: ColorConstant.paragraphTextColor,
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(), 
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Text(
                        "12 Feb 2023", // Example date
                        style: TextStyleConstant.nunitoSemiBold.copyWith(
                          color: ColorConstant.paragraphTextColor,
                          fontSize: 10,
                        ),
                      ),
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
