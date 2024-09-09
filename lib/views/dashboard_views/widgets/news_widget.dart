import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/global_widgets/news_card_global_widget.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            "Seputar Berita",
            style: TextStyleConstant.nunitoBold.copyWith(fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 7, bottom: 15),
          child: NewsCardGlobalWidget(
            newsTitle: "Pembinaan oleh TNI",
            newsAuthor: "Agus Dermawan",
            newsDescription: "Warga binaan melakukan kegiatan fisik dengan TNI",
            newsAsset: "assets/images/pembinaan1.jpg",
            newsTime: "09:45",
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 7, bottom: 15),
          child: NewsCardGlobalWidget(
            newsTitle: "Pembinaan oleh TNI",
            newsAuthor: "Agus Dermawan",
            newsDescription: "Warga binaan melakukan kegiatan fisik dengan TNI",
            newsAsset: "assets/images/pembinaan1.jpg",
            newsTime: "09:45",
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 7, bottom: 15),
          child: NewsCardGlobalWidget(
            newsTitle: "Pembinaan oleh TNI",
            newsAuthor: "Agus Dermawan",
            newsDescription: "Warga binaan melakukan kegiatan fisik dengan TNI",
            newsAsset: "assets/images/pembinaan1.jpg",
            newsTime: "09:45",
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 7, bottom: 15),
          child: NewsCardGlobalWidget(
            newsTitle: "Pembinaan oleh TNI",
            newsAuthor: "Agus Dermawan",
            newsDescription: "Warga binaan melakukan kegiatan fisik dengan TNI",
            newsAsset: "assets/images/pembinaan1.jpg",
            newsTime: "09:45",
          ),
        ),
      ],
    );
  }
}
