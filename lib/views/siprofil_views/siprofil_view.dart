import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class SiprofilView extends StatelessWidget {
  const SiprofilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // Default appBar height
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            centerTitle: true,
            backgroundColor: ColorConstant.primaryColor,
            title: Text(
              "SiProfil",
              style: TextStyleConstant.nunitoSemiBold
                  .copyWith(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 18, left: 16, right: 16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/petugas.png'),
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Setianto",
                            style: TextStyleConstant.nunitoSemiBold.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Penjaga Tahanan",
                            style: TextStyleConstant.nunitoSemiBold.copyWith(
                              fontSize: 14,
                              color: ColorConstant.paragraphTextColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Data Pribadi",
                    style: TextStyleConstant.nunitoBold.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Divider(color: ColorConstant.primaryBackground),
                  _dataPribadiTextField("NIP", "199601252020121003"),
                  const SizedBox(height: 15),
                  _dataPribadiTextField(
                      "Tempat/Tanggal Lahir", "199601252020121003"),
                  const SizedBox(height: 15),
                  _dataPribadiTextField("Nomor HP", "083844630000"),
                  const SizedBox(height: 15),
                  _dataPribadiTextField("Pangkat", "Pengatur Muda (II/A)"),
                  const SizedBox(height: 15),
                  _dataPribadiTextField("Email", "setianto@gmail.com"),
                  const SizedBox(height: 15),
                  _slipGajiTextField("Slip Gaji", "Download"),
                  const SizedBox(height: 15),
                  _alamatTextField("Alamat",
                      "Desa Candinata RT 12/06 Kec. Kutasari Kab. Purbalingga Jawa Tengah"),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _dataPribadiTextField(String title, String data) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyleConstant.nunitoBold.copyWith(
            fontSize: 12,
            color: ColorConstant.paragraphTextColor,
          ),
        ),
        const Spacer(),
        Text(
          data,
          style: TextStyleConstant.nunitoBold.copyWith(
            fontSize: 12,
            color: ColorConstant.paragraphTextColor,
          ),
        ),
      ],
    );
  }

  Widget _alamatTextField(String title, String data) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyleConstant.nunitoBold.copyWith(
            fontSize: 12,
            color: ColorConstant.paragraphTextColor,
          ),
        ),
        const Spacer(),
        Expanded(
          child: Text(
            data,
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 12,
              color: ColorConstant.paragraphTextColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _slipGajiTextField(String title, String data) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyleConstant.nunitoBold.copyWith(
            fontSize: 12,
            color: ColorConstant.paragraphTextColor,
          ),
        ),
        const Spacer(),
        Text(
          data,
          style: TextStyleConstant.nunitoBold.copyWith(
            fontSize: 12,
            color: ColorConstant.primaryColor,
            decoration: TextDecoration.underline,
            decorationColor: ColorConstant.primaryColor,
          ),
        ),
      ],
    );
  }
}
