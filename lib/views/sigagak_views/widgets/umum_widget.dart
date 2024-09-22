import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/global_widgets/sigagak_content_card_global_widget.dart';
import 'package:sibesi_app/utils/app_routes.dart';
import 'package:sibesi_app/views/sigagak_views/widgets/filter_widget.dart';

class UmumWidget extends StatelessWidget {
  const UmumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FilterWidget(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: List.generate(10, (int index) {
                return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.detailKegiatanPage);
                  },
                  child: const SigagakContentCardGlobalWidget(),
                ),
              );
              })
            ),
          ),
        ],
      ),
    );
  }
}