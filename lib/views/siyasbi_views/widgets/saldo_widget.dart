import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class SaldoWidget extends StatelessWidget {
  const SaldoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 16),
          _buildAvailableBalance(),
          const SizedBox(height: 10),
          _buildBalanceDetails(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorConstant.primaryBackground),
        ),
      ),
      child: Text(
        'Saldo',
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }

  Widget _buildAvailableBalance() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstant.secondaryColor,
        ),
        child: Column(
          children: [
            Text(
              'Saldo Tersedia',
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            Text(
              'Rp 1.000.000',
              style: TextStyleConstant.nunitoBold.copyWith(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceDetails() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border(
          top: BorderSide(color: ColorConstant.primaryBackground),
        ),
      ),
      child: Column(
        children: [
          _buildBalanceRow('Saldo Masuk', 'Rp 1.500.000'),
          _buildBalanceRow('Saldo Keluar', 'Rp 500.000'),
          _buildDownloadRow('Riwayat Saldo Masuk'),
          _buildDownloadRow('Riwayat Saldo Keluar'),
          _buildShoppingListRow(),
        ],
      ),
    );
  }

  Widget _buildBalanceRow(String title, String amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 12,
              color: ColorConstant.paragraphTextColor,
            ),
          ),
          Text(
            amount,
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 12,
              color: ColorConstant.paragraphTextColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadRow(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 12,
              color: ColorConstant.paragraphTextColor,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ColorConstant.primaryColor,
                  ),
                ),
              ),
              child: Text(
                'Download',
                style: TextStyleConstant.nunitoRegular.copyWith(
                  fontSize: 12,
                  color: ColorConstant.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShoppingListRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Daftar Belanja Hari Ini',
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 12,
              color: ColorConstant.paragraphTextColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.daftarBelanjaPage);
            },
            child: Row(
              children: [
                Text(
                  'Lihat',
                  style: TextStyleConstant.nunitoRegular.copyWith(
                    fontSize: 12,
                    color: ColorConstant.primaryColor,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  color: ColorConstant.primaryColor,
                  size: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
