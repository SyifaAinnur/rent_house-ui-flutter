import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;
double defaultRadius = 14.0;

// NOTE: COLORS
Color kBlackColor = Color(0xff253342);
Color kGreyColor = Color(0xffAFAFAF);
Color kRedColor = Color(0xffE76D81);
Color kPurpleColor = Color(0xff5F6AC4);
Color kWhiteColor = Color(0xffFFFFFF);

// NOTE: TEXT STYLES
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kPurpleColor,
);

// NOTE: FONT WEIGHTS
FontWeight thin = FontWeight.w100;
FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
