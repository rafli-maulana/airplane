import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;

Color kPrimaryColor = const Color(0xff5C40CC);
Color kBlackColor = const Color(0xff1F1449);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kGreyColor = const Color(0xff9698A9);
Color kGreenColor = const Color(0xff0EC3AE);
Color kRedColor = const Color(0xffEB70A5);
Color kBackgroundColor = const Color(0xffFAFAFA);
Color kInactiveColor = const Color(0xffDBD7EC);
Color kTransparentColor = Colors.transparent;

TextStyle blackStyleText = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle whiteStyleText = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle greyStyleText = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle greenStyleText = GoogleFonts.poppins(
  color: kGreenColor,
);
TextStyle redStyleText = GoogleFonts.poppins(
  color: kRedColor,
);
TextStyle purpleStyleText = GoogleFonts.poppins(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
