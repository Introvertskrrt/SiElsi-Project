import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/controllers/sigagak_controller.dart';
import 'package:sibesi_app/views/sigagak_views/widgets/descriptions_widget.dart';
import 'package:sibesi_app/views/sigagak_views/widgets/image_carousel_widget.dart';

class DetailKegiatanView extends StatelessWidget {
  DetailKegiatanView({super.key});

  final SigagakController controller = Get.put(SigagakController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCarouselWidget(),
            Transform.translate(
              offset: const Offset(0, -30),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DescriptionsWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

