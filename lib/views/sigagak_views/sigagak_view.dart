import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/views/sigagak_views/widgets/jasmani_widget.dart';
import 'package:sibesi_app/views/sigagak_views/widgets/rohani_widget.dart';
import 'package:sibesi_app/views/sigagak_views/widgets/umum_widget.dart';

class SigagakView extends StatelessWidget {
  const SigagakView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: ColorConstant.primaryBackground,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: ColorConstant.primaryColor,
          title: Text(
            "SiGagak",
            style: TextStyleConstant.nunitoSemiBold
                .copyWith(color: Colors.white, fontSize: 20),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.white.withOpacity(0.5),
            labelStyle: TextStyleConstant.nunitoRegular.copyWith(
              color: Colors.white,
              fontSize: 18,
            ),
            tabs: const [
              Tab(text: "Jasmani"),
              Tab(text: "Rohani"),
              Tab(text: "Umum"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            JasmaniWidget(),
            RohaniWidget(),
            UmumWidget(),
          ],
        ),
      ),
    );
  }
}
