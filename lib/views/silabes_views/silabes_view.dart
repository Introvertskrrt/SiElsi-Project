import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/views/silabes_views/widgets/silabes_menu_widget.dart';
import 'package:sibesi_app/views/silabes_views/widgets/silabes_welcome_widget.dart';

class SilabesView extends StatelessWidget {
  const SilabesView({super.key});

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
              "SiLabes",
              style: TextStyleConstant.nunitoSemiBold
                  .copyWith(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SilabesWelcomeWidget(),
            SilabesMenuWidget(),
          ],
        ),
      ),
    );
  }
}
