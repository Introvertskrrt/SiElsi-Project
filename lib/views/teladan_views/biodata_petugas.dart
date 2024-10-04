import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class BiodataPetugasView extends StatelessWidget {
  const BiodataPetugasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'Biodata Petugas',
          style: TextStyleConstant.nunitoSemiBold.copyWith(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildImageContainer(),
            _buildProfileSection(),
            _buildDisciplineAssessmentSection(),
            _buildCommunityAssessmentSection(),
            const SizedBox(height: 50),
            _buildRatingButton(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  /// Widget untuk menampilkan gambar petugas
  Widget _buildImageContainer() {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.primaryColor,
            width: 1,
          ),
        ),
      ),
      child: Image.asset(
        'assets/images/petugas.png',
        fit: BoxFit.contain,
      ),
    );
  }

  /// Widget untuk menampilkan bagian Profile
  Widget _buildProfileSection() {
    final Map<String, String> profileData = {
      'Nomor Pegawai': '199601252020121003',
      'Jabatan': 'Penjaga Tahanan',
      'Tempat Tanggal Lahir': 'Cilacap, 20 Feb 1990',
      'Bergabung Sejak': '13 Desember 2016',
      'Pangkat': 'Pengatur Muda (II/A)',
    };

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Setianto',
              style: TextStyleConstant.nunitoBold.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Profile Pegawai',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 16,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
          Divider(color: ColorConstant.primaryBackground),
          const SizedBox(height: 10),
          _buildDataRows(profileData),
        ],
      ),
    );
  }

  /// Widget untuk menampilkan bagian penilaian kedisiplinan
  Widget _buildDisciplineAssessmentSection() {
    final Map<String, int> disciplineRatings = {
      'Disiplin Absensi': 5,
      'Aktif Mengisi Jurnal': 4,
      'Keaktifan Di Kantor': 5,
    };

    return _buildRatingSection('Penilaian Kedisiplinan', disciplineRatings);
  }

  /// Widget untuk menampilkan bagian penilaian masyarakat
  Widget _buildCommunityAssessmentSection() {
    final Map<String, int> communityRatings = {
      'Pelayanan': 5,
    };

    return _buildRatingSection('Penilaian Masyarakat', communityRatings);
  }

  /// Widget untuk menampilkan tombol beri nilai
  Widget _buildRatingButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 35,
        width: 160,
        decoration: BoxDecoration(
          color: ColorConstant.primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            'Beri Nilai',
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  /// Widget reusable untuk menampilkan data biodata
  Widget _buildDataRows(Map<String, String> data) {
    return Column(
      children: data.entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                entry.key,
                style: TextStyleConstant.nunitoRegular.copyWith(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              Text(
                entry.value,
                style: TextStyleConstant.nunitoRegular.copyWith(
                  fontSize: 12,
                  color: ColorConstant.paragraphTextColor,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  /// Widget reusable untuk menampilkan rating section
  Widget _buildRatingSection(String title, Map<String, int> ratings) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          Divider(color: ColorConstant.primaryBackground),
          const SizedBox(height: 10),
          Column(
            children: ratings.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      entry.key,
                      style: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        entry.value,
                        (index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
