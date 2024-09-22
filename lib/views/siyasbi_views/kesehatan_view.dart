import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class KesehatanView extends StatelessWidget {
  const KesehatanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'Kesehatan',
          style: TextStyle(fontSize: 20, color: Colors.white),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildProfileSection(),
              const SizedBox(height: 19),
              _buildSectionHeader(
                iconPath: 'assets/svg/riwayat_pemeriksaan.svg',
                title: 'Riwayat Pemeriksaan',
              ),
              const SizedBox(height: 5),
              _buildInfoRow('Hari / Tanggal', 'Senin, 15 Februari 2024'),
              _buildInfoRow('Tempat', 'Poliklinik Besi'),
              _buildInfoRow('Dokter', 'Dr. Maskur'),
              _buildInfoRow('Perawat', 'Ns. Chyndy'),
              _buildInfoRow('Tindakan', '-'),
              _buildInfoRow('Penyakit', '-'),
              _buildDownloadableRow('Resep Dokter', 'Download'),
              _buildDownloadableRow('Keterangan', 'Download'),
              const SizedBox(height: 30),
              _buildSectionHeader(
                iconPath: 'assets/svg/tindak_lanjut.svg',
                title: 'Tindak Lanjutan',
              ),
              const SizedBox(height: 5),
              _buildInfoRow('Rujuk RS', 'RSUD Cilacap'),
              _buildInfoRow('Pengawal', 'Agung Fuadi'),
              _buildInfoRow('Kamar', '03 Dahlia'),
              _buildInfoRow('Kondisi', 'Baik'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/profile-tahanan.png',
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: TextStyleConstant.nunitoSemiBold.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'Kondisi Kesehatan',
              style: TextStyleConstant.nunitoSemiBold.copyWith(
                fontSize: 12,
                color: ColorConstant.paragraphTextColor,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildSectionHeader(
      {required String iconPath, required String title}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.primaryBackground,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(iconPath, width: 24),
          const SizedBox(width: 7),
          Text(
            title,
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 12,
              color: ColorConstant.paragraphTextColor,
            ),
          ),
          Text(
            value,
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 12,
              color: ColorConstant.paragraphTextColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadableRow(String label, String action) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 12,
              color: ColorConstant.paragraphTextColor,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorConstant.primaryColor,
                ),
              ),
            ),
            child: Text(
              action,
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 12,
                color: ColorConstant.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
