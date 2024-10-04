import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class SilabesMenuWidget extends StatelessWidget {
  const SilabesMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            child: Center(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("assets/icons/tata_tertib_pengunjung.png"),
                ),
                title: Text(
                  "Tata Tertib Pengunjung",
                  style:
                      TextStyleConstant.nunitoSemiBold.copyWith(fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            child: Center(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("assets/icons/jadwal_kunjungan.png"),
                ),
                title: Text(
                  "Jadwal Kunjungan",
                  style:
                      TextStyleConstant.nunitoSemiBold.copyWith(fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            child: Center(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("assets/icons/SOP_kunjungan.png"),
                ),
                title: Text(
                  "SOP Kunjungan",
                  style:
                      TextStyleConstant.nunitoSemiBold.copyWith(fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            child: Center(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("assets/icons/pendaftaran_kunjungan.png"),
                ),
                title: Text(
                  "Pendaftaran Kunjungan",
                  style:
                      TextStyleConstant.nunitoSemiBold.copyWith(fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
