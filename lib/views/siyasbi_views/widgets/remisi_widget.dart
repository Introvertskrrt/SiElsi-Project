import 'package:flutter/material.dart';
import '../../../constants/color_constant.dart';
import '../../../constants/text_style_constant.dart';

class RemisiWidget extends StatelessWidget {
  const RemisiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 9,
        right: 16,
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: ColorConstant.primaryBackground)),
            ),
            child: Text(
              'Remisi',
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const SizedBox(height: 18),
        ],
      ),
    );
  }
}
