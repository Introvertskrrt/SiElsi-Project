import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class KirimButtonWidget extends StatelessWidget {
  const KirimButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 30,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
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
          "Kirim",
          style: TextStyleConstant.nunitoBold.copyWith(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
