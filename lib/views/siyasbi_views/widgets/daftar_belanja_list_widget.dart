import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class DaftarBelanjaListWidget extends StatelessWidget {
  const DaftarBelanjaListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16), // Add vertical padding
      child: Column(
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
            child: Container(
              width: double.infinity,
              height: 132,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 16, bottom: 16, right: 10),
                    child: Image.asset("assets/images/pepsodent.png"),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            "Pepsodent Pasta Gigi Pencegah Gigi Berlubang",
                            style: TextStyleConstant.nunitoSemiBold
                                .copyWith(fontSize: 14),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "12 Feb 2023, 13:45",
                          style: TextStyleConstant.nunitoSemiBold.copyWith(
                              fontSize: 10,
                              color: ColorConstant.paragraphTextColor),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              "Total 5 Produk: ",
                              style: TextStyleConstant.nunitoRegular
                                  .copyWith(fontSize: 12),
                            ),
                            Text(
                              "Rp43.000",
                              style: TextStyleConstant.nunitoBold
                                  .copyWith(fontSize: 12),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  color: ColorConstant.secondaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Beli lagi",
                                    style: TextStyleConstant.nunitoSemiBold
                                        .copyWith(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
