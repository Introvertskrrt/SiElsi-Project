import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/views/dashboard_views/widgets/header_widget.dart';
import 'package:sibesi_app/views/dashboard_views/widgets/news_widget.dart';
import 'package:sibesi_app/views/dashboard_views/widgets/umum_menu_widget.dart';

class DashboardUmumView extends StatelessWidget {
  const DashboardUmumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            SizedBox(height: 36),
            UmumMenuWidget(),
            NewsWidget(),
          ],
        ),
      ),
    );
  }
}
