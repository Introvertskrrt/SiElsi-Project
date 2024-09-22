import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class ErrorDialogGlobalWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorDialogGlobalWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Row(
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
          ),
          const SizedBox(width: 10),
          Text(
            'Error',
            style: TextStyleConstant.nunitoRegular.copyWith(fontSize: 18)
          ),
        ],
      ),
      content: Text(
        errorMessage,
        style: TextStyleConstant.nunitoRegular.copyWith(fontSize: 16)
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            'Close',
            style: TextStyleConstant.nunitoSemiBold.copyWith(color: ColorConstant.primaryColor)
          ),
          onPressed: () {
            Get.back(); // Close the dialog
          },
        ),
      ],
    );
  }
}
