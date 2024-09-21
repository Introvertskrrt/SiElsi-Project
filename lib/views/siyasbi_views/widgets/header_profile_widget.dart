import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class HeaderProfileWidget extends StatelessWidget {
  const HeaderProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                color: ColorConstant.primaryColor,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: MediaQuery.of(context).size.width * 0.5 - 55,
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile-tahanan.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 5,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 45,
            left: MediaQuery.of(context).size.width * 0.5 - 30,
            child: Text(
              'Profile',
              style: TextStyleConstant.nunitoSemiBold.copyWith(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
