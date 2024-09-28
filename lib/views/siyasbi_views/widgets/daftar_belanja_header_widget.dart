import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class DaftarBelanjaHeaderWidget extends StatelessWidget {
  const DaftarBelanjaHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 22, right: 16),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 108,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.black.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF8FBFF),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Set to center
                  children: [
                    // Leading Icon
                    Icon(
                      Icons.shopping_cart,
                      size: 36,
                      color: ColorConstant.primaryColor,
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Center vertically
                        children: [
                          Text(
                            "Pesan Makanan atau Barang Yuk!",
                            style: TextStyleConstant.nunitoSemiBold.copyWith(
                              fontSize: 16,
                              color: ColorConstant.primaryBlueTextColor,
                            ),
                          ),
                          const SizedBox(
                              height: 4), // Spacer between title and subtitle
                          Text(
                            "Pesan makanan untuk keluarga gak pake repot.",
                            style: TextStyleConstant.nunitoSemiBold.copyWith(
                              fontSize: 14,
                              color: ColorConstant.secondaryBlueTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: ColorConstant.primaryBlueTextColor,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
