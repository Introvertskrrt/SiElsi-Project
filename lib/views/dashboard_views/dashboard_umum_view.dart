import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/views/dashboard_views/widgets/header_widget.dart';

class DashboardUmumView extends StatelessWidget {
  const DashboardUmumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardHeaderWidget(),
            SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Text(
                "Layanan Umum",
                style: TextStyleConstant.nunitoBold.copyWith(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180),
                    color: ColorConstant.secondaryColor
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180),
                    color: ColorConstant.secondaryColor
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180),
                    color: ColorConstant.secondaryColor
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
