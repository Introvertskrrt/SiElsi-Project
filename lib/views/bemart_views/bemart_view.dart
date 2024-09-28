import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/views/bemart_views/widgets/beverages_product_category_widget.dart';
import 'package:sibesi_app/views/bemart_views/widgets/clothes_product_category_widget.dart';
import 'package:sibesi_app/views/bemart_views/widgets/food_product_category_widget.dart';
import 'package:sibesi_app/views/bemart_views/widgets/goods_product_category_widget.dart';
import 'package:sibesi_app/views/bemart_views/widgets/medicine_product_category_widget.dart';
import 'package:sibesi_app/views/bemart_views/widgets/menu_widget.dart';
import 'package:sibesi_app/views/bemart_views/widgets/promo_banner_widget.dart';
import 'package:sibesi_app/views/bemart_views/widgets/promo_product_category_widget.dart';
import 'package:sibesi_app/views/bemart_views/widgets/search_bar_widget.dart';

class BemartView extends StatelessWidget {
  const BemartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // Default appBar height
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            centerTitle: true,
            backgroundColor: ColorConstant.primaryColor,
            title: Text(
              "Be'Mart",
              style: TextStyleConstant.nunitoSemiBold
                  .copyWith(color: Colors.white, fontSize: 20),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_basket),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar widget
            const SearchBarWidget(),

            // Spacer for visual separation
            const SizedBox(height: 20),

            const MenuWidget(),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  PromoBannerWidget(),
                  const SizedBox(height: 40),
                  const PromoProductCategoryWidget(),
                  const SizedBox(height: 30),
                  const FoodProductCategoryWidget(),
                  const SizedBox(height: 30),
                  const BeveragesProductCategoryWidget(),
                  const SizedBox(height: 30),
                  const MedicineProductCategoryWidget(),
                  const SizedBox(height: 30),
                  const ClothesProductCategoryWidget(),
                  const SizedBox(height: 30),
                  const GoodsProductCategoryWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
