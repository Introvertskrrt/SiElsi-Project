import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class NewsCardGlobalWidget extends StatelessWidget {
  final String newsTitle;
  final String newsAuthor;
  final String newsDescription;
  final String newsAsset;
  final String newsTime;

  const NewsCardGlobalWidget({
    super.key,
    required this.newsTitle,
    required this.newsAuthor,
    required this.newsDescription,
    required this.newsAsset,
    required this.newsTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 156,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: 76,
              height: 115,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(newsAsset),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsTitle,
                    style: TextStyleConstant.nunitoBold.copyWith(fontSize: 16),
                    maxLines: 1, // Set max number of lines
                    overflow: TextOverflow.ellipsis, // Add ellipsis if overflow
                  ),
                  const SizedBox(height: 7),
                  Text(
                    newsAuthor,
                    style: TextStyleConstant.nunitoRegular.copyWith(fontSize: 16),
                    maxLines: 1, // Set max number of lines
                    overflow: TextOverflow.ellipsis, // Add ellipsis if overflow
                  ),
                  const SizedBox(height: 2),
                  Text(
                    newsDescription,
                    style: TextStyleConstant.nunitoRegular.copyWith(
                      fontSize: 16,
                      color: ColorConstant.paragraphTextColor,
                    ),
                    maxLines: 2, // Allow up to 2 lines for description
                    overflow: TextOverflow.ellipsis, // Add ellipsis if overflow
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 10),
            child: Column(
              children: [
                Text(
                  newsTime,
                  style: TextStyleConstant.nunitoRegular.copyWith(
                    fontSize: 16,
                    color: ColorConstant.paragraphTextColor,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.5),
                  child: InkWell(
                    onTap: () {
                      errorSnackBar();
                    },
                    child: Container(
                      width: 50,
                      height: 22.5,
                      decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Lihat",
                          style: TextStyleConstant.nunitoRegular.copyWith(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  void errorSnackBar() {
    Get.snackbar(
      "Info", // Title of the Snackbar
      "Maaf, belum tersedia pada versi prototype", // Message of the Snackbar
      snackPosition: SnackPosition.BOTTOM, // Position of the Snackbar
      backgroundColor: Colors.black87, // Background color
      colorText: Colors.white, // Text color
      borderRadius: 20,
      margin: const EdgeInsets.all(15),
      duration:
          const Duration(seconds: 3), // How long the Snackbar will be shown
    );
  }
}
