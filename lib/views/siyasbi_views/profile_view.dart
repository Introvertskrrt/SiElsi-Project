import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/views/siyasbi_views/widgets/header_profile_widget.dart';

class ProfileTahananView extends StatelessWidget {
  const ProfileTahananView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderProfileWidget(),
            SizedBox(height: 65),
            Text(
              'Full Name',
              style: TextStyleConstant.nunitoSemiBold.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'Warga Binaan',
              style: TextStyleConstant.nunitoRegular.copyWith(
                fontSize: 12,
                color: ColorConstant.paragraphTextColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 54,
                bottom: 44,
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: ColorConstant.primaryBackground),
                        ),
                      ),
                      child: Text(
                        'Biodata',
                        style: TextStyleConstant.nunitoRegular.copyWith(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 11),
                    _buildInfoRow('Jenis Kelamin', 'Laki-laki',
                        'assets/svg/jenis_kelamin.svg'),
                    const SizedBox(height: 11),
                    _buildInfoRow('Tempat/Tanggal Lahir',
                        'Purwokerto, 17 Agustus 1945', 'assets/svg/TTL.svg'),
                    const SizedBox(height: 11),
                    _buildInfoRow('Umur', '30 Tahun', 'assets/svg/umur.svg'),
                    const SizedBox(height: 11),
                    _buildInfoRow(
                        'Status Nikah', 'Belum', 'assets/svg/status_nikah.svg'),
                    const SizedBox(height: 11),
                    _buildInfoRow(
                        'Tindak Pidana',
                        'Pencabulan anak dibawah umur',
                        'assets/svg/tindak_pidana.svg'),
                    const SizedBox(height: 11),
                    _buildInfoRow('Lama Pidana', '10 Tahun, 6 Bulan',
                        'assets/svg/lama_pidana.svg'),
                    const SizedBox(height: 11),
                    _buildAddressInfo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value, String iconPath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyleConstant.nunitoRegular.copyWith(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: ColorConstant.primaryBackground,
            border: Border.all(color: Color.fromRGBO(215, 215, 215, 100)),
          ),
          child: Row(
            children: [
              SvgPicture.asset(iconPath, width: 20, height: 20),
              const SizedBox(width: 11),
              Text(
                value,
                style: TextStyleConstant.nunitoRegular.copyWith(
                  fontSize: 12,
                  color: ColorConstant.paragraphTextColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAddressInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Alamat',
          style: TextStyleConstant.nunitoRegular.copyWith(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: ColorConstant.primaryBackground,
            border: Border.all(color: Color.fromRGBO(215, 215, 215, 100)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/svg/alamat.svg', width: 20, height: 20),
              const SizedBox(width: 11),
              Expanded(
                child: Text(
                  'Jl. DI Panjaitan No.128, Karangreja, Purwokerto Kidul, Kec. Purwokerto Sel., Kabupaten Banyumas, Jawa Tengah 53147',
                  style: TextStyleConstant.nunitoRegular.copyWith(
                    fontSize: 12,
                    color: ColorConstant.paragraphTextColor,
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
