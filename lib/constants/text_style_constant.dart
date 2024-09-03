import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sibesi_app/constants/color_constant.dart';

class TextStyleConstant {
  static TextStyle nunitoRegular = GoogleFonts.nunito(
    color: Colors.black,
    fontWeight: FontWeight.normal,
  );
  static TextStyle nunitoBold = GoogleFonts.nunito(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle nunitoParagraph = GoogleFonts.nunito(
    color: ColorConstant.paragraphTextColor,
    fontWeight: FontWeight.normal,
  );
  static TextStyle nunitoButton = GoogleFonts.nunito(
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );
  static TextStyle nunitoRedColor = GoogleFonts.nunito(
    color: ColorConstant.primaryColor,
    fontWeight: FontWeight.normal,
  );
  static TextStyle nunitoSemiBold = GoogleFonts.nunito(
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
}