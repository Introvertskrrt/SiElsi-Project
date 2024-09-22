import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/views/dashboard_views/widgets/logged_header_widget.dart';
import 'package:sibesi_app/views/dashboard_views/widgets/news_widget.dart';
import 'package:sibesi_app/views/dashboard_views/widgets/pegawai_menu_widget.dart';

class DashboardPegawaiView extends StatelessWidget {
  const DashboardPegawaiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoggedHeaderWidget(),
            SizedBox(height: 36),
            PegawaiMenuWidget(),
            NewsWidget(),
          ],
        ),
      ),
    );
  }
}
