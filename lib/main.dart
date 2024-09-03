import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/utils/app_routes.dart';
import 'package:sibesi_app/views/dashboard_views/dashboard_umum_view.dart';
import 'package:sibesi_app/views/intro_views/intro_view.dart';
import 'package:sibesi_app/views/splashscreen/splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    home: const SplashScreen(),
    getPages: [
      GetPage(
        name: AppRoutes.splashScreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: AppRoutes.introPage,
        page: () => const IntroView(),
      ),
      GetPage(
        name: AppRoutes.dashboardUmumPage,
        page: () => const DashboardUmumView(),
      )
    ],
  ));
}
