import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            "Hai, Rizky",
            style: TextStyleConstant.nunitoBold.copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            width: double.infinity,
            height: 48, // Adjusted height for better centering
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            child: TextFormField(
              onChanged: (value) {},
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 16,
                color: ColorConstant.paragraphTextColor,
              ),
              decoration: InputDecoration(
                hintText: 'Mau belanja apa?',
                hintStyle: TextStyleConstant.nunitoRegular.copyWith(
                  fontSize: 14,
                  color: ColorConstant.paragraphTextColor.withOpacity(0.6),
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 14, // Adjusted for perfect vertical centering
                  horizontal: 20, // Padding to the left
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: ColorConstant.paragraphTextColor.withOpacity(0.6),
                ), // Add search icon to the right
              ),
            ),
          ),
        ),
      ],
    );
  }
}
