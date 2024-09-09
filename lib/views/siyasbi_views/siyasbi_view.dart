import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import '../../constants/text_style_constant.dart';
import 'widgets/header_widget.dart';
import 'widgets/bar_widget.dart';
import 'widgets/remisi_widget.dart';

class SiyasbiView extends StatelessWidget {
  const SiyasbiView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Memindahkan DefaultTabController ke sini
      length: 4, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'SiYASBI',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: ColorConstant.primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                children: [
                  SizedBox(height: 18),
                  const HeaderWidget(),
                  SizedBox(height: 18),
                  const BarWidget(),
                  SizedBox(height: 18),
                  const RemisiWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
