import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/utils/app_routes.dart';
import 'package:sibesi_app/views/bemart_views/bemart_view.dart';
import 'package:sibesi_app/views/dashboard_views/dashboard_keluarga_view.dart';
import 'package:sibesi_app/views/dashboard_views/dashboard_pegawai_view.dart';
import 'package:sibesi_app/views/dashboard_views/dashboard_umum_view.dart';
import 'package:sibesi_app/views/intro_views/intro_view.dart';
import 'package:sibesi_app/views/kepuasan_views/kepuasan_view.dart';
import 'package:sibesi_app/views/login_views/login_masyarakat_view.dart';
import 'package:sibesi_app/views/login_views/login_role_view.dart';
import 'package:sibesi_app/views/login_views/login_pegawai_view.dart';
import 'package:sibesi_app/views/pengaduan_views/pengaduan_terlapor_view.dart';
import 'package:sibesi_app/views/pengaduan_views/pengaduan_view.dart';
import 'package:sibesi_app/views/sigagak_views/detail_kegiatan_view.dart';
import 'package:sibesi_app/views/sigagak_views/sigagak_view.dart';
import 'package:sibesi_app/views/sinamu_views/sinamu_view.dart';
import 'package:sibesi_app/views/siyasbi_views/daftar_belanja_view.dart';
import 'package:sibesi_app/views/siyasbi_views/kesehatan_view.dart';
import 'package:sibesi_app/views/siyasbi_views/pembinaan_view.dart';
import 'package:sibesi_app/views/siyasbi_views/pesan_view.dart';
import 'package:sibesi_app/views/siyasbi_views/profile_view.dart';
import 'package:sibesi_app/views/siyasbi_views/siyasbi_view.dart';
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
      ),
      GetPage(
        name: AppRoutes.dashboardPegawaiPage,
        page: () => const DashboardPegawaiView(),
      ),
      GetPage(
        name: AppRoutes.dashboardKeluargaPage,
        page: () => const DashboardKeluargaView(),
      ),
      GetPage(
        name: AppRoutes.siyasbiPage,
        page: () => const SiyasbiView(),
      ),
      GetPage(
        name: AppRoutes.loginPegawaiPage,
        page: () => LoginPegawaiView(),
      ),
      GetPage(
        name: AppRoutes.sigagakPage,
        page: () => const SigagakView(),
      ),
      GetPage(
        name: AppRoutes.detailKegiatanPage,
        page: () => DetailKegiatanView(),
      ),
      GetPage(
        name: AppRoutes.profiletahananPage,
        page: () => const ProfileTahananView(),
      ),
      GetPage(
        name: AppRoutes.pesanPage,
        page: () => PesanView(),
      ),
      GetPage(
        name: AppRoutes.pembinaanPage,
        page: () => const PembinaanView(),
      ),
      GetPage(
        name: AppRoutes.kesehatanPage,
        page: () => const KesehatanView(),
      ),
      GetPage(
        name: AppRoutes.daftarBelanjaPage,
        page: () => const DaftarBelanjaView(),
      ),
      GetPage(
        name: AppRoutes.loginRolePage,
        page: () => LoginRoleView(),
      ),
      GetPage(
        name: AppRoutes.loginMasyarakatPage,
        page: () => LoginMasyarakatView(),
      ),
      GetPage(
        name: AppRoutes.bemartPage,
        page: () => const BemartView(),
      ),
      GetPage(
        name: AppRoutes.sinamuPage,
        page: () => const SinamuView(),
      ),
      GetPage(
        name: AppRoutes.kepuasanPage,
        page: () => const KepuasanView(),
      ),
      GetPage(
        name: AppRoutes.pengaduanPage,
        page: () => const PengaduanView(),
      ),
      GetPage(
          name: AppRoutes.pengaduanTerlaporPage,
          page: () => const PengaduanTerlaporView())
    ],
  ));
}
