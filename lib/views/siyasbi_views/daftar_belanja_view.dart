import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/views/siyasbi_views/widgets/daftar_belanja_header_widget.dart';
import 'package:sibesi_app/views/siyasbi_views/widgets/daftar_belanja_list_widget.dart';

class DaftarBelanjaView extends StatelessWidget {
  const DaftarBelanjaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70), // Adjust height as needed
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.primaryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            centerTitle: true,
            title: Text(
              "Daftar Belanja",
              style: TextStyleConstant.nunitoSemiBold
                  .copyWith(color: Colors.white, fontSize: 20),
            ),
            backgroundColor:
                Colors.transparent, // Make the AppBar background transparent
            elevation: 0, // Remove shadow if needed
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            DaftarBelanjaHeaderWidget(),
            SizedBox(height: 22),
            DaftarBelanjaListWidget(),
          ],
        ),
      ),
    );
  }
}
