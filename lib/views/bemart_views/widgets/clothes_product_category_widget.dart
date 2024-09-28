import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class ClothesProductCategoryWidget extends StatelessWidget {
  const ClothesProductCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              Text(
                "Pakaian",
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Text(
                "Lihat Semua",
                style: TextStyleConstant.nunitoBold.copyWith(
                  fontSize: 12,
                  color: ColorConstant.secondaryColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Scroll horizontal
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: List.generate(
                5,
                (index) {
                  return Container(
                    width: 150,
                    height: 222,
                    margin: const EdgeInsets.only(
                        right: 16), // Tambahkan margin antar item
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        SizedBox(
                          width: double.infinity,
                          height: 75,
                          child: Image.asset(
                            "assets/images/jaket.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 10,
                          decoration: BoxDecoration(
                            color: ColorConstant.primaryColor,
                          ),
                          child: Center(
                            child: Text(
                              "Jaket Olahraga",
                              style: TextStyleConstant.nunitoBold.copyWith(
                                fontSize: 8,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Jaket Pakaian Olahraga T-shirt Hitam",
                            style: TextStyleConstant.nunitoRegular
                                .copyWith(fontSize: 12),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            "Rp85.000",
                            style: TextStyleConstant.nunitoBold
                                .copyWith(fontSize: 12),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.check_box,
                                color: Colors.lightGreen,
                                size: 12,
                              ),
                              Text(
                                "Stok Tersedia",
                                style: TextStyleConstant.nunitoRegular
                                    .copyWith(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Center(
                          child: SizedBox(
                            width: 140,
                            height: 25,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  ColorConstant.primaryColor,
                                ),
                              ),
                              onPressed: () {
                                // Button action here
                              },
                              child: Text(
                                "+ Tambah",
                                style: TextStyleConstant.nunitoBold.copyWith(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
