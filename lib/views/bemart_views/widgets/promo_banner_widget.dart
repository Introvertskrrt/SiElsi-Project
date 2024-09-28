import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/controllers/bemart_controller.dart';

class PromoBannerWidget extends StatelessWidget {
  PromoBannerWidget({super.key});

  final BemartController controller = Get.put(BemartController());


  @override
  Widget build(BuildContext context) {
    final List<Widget> bannerItems = [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Banner Promo 1',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Banner Promo 2',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Banner Promo 3',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ];
    
    return Column(
      children: [
        const SizedBox(height: 5),
        CarouselSlider(
          items: bannerItems,
          options: CarouselOptions(
            height: 150.0,
            enableInfiniteScroll: true,
            autoPlay: true,
            enlargeFactor: 0,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.9,
            onPageChanged: (index, reason) {
              controller.currentIndex.value = index; // Update index
            },
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    bannerItems.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      width: 8.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentIndex.value == index
                            ? ColorConstant.primaryColor
                            : ColorConstant.primaryBackground,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Lihat Semua Promo",
                  style: TextStyleConstant.nunitoBold.copyWith(
                    fontSize: 14,
                    color: ColorConstant.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
