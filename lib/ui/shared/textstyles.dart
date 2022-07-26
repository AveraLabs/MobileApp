import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

/*
w100 → Thin, the least thick
w200 → Extra-light
w300 → Light
w400 → Normal / regular / plain
w500 → Medium
w600 → Semi-bold
w700 → Bold
w800 → Extra-bold
w900 → Black, the most thick
 */

TextStyle get displayTitle {
  return GoogleFonts.workSans(
    textStyle: TextStyle(
      fontSize: 64,
      height: 75.07 / 64,
      fontWeight: FontWeight.w800,
      color: primaryTextColor,
    ),
  );
}

TextStyle get headerH1 {
  return GoogleFonts.workSans(
    textStyle: TextStyle(
      fontSize: 48,
      height: 56 / 48,
      fontWeight: FontWeight.w600,
      color: primaryTextColor,
    ),
  );
}

TextStyle get headerH1Light {
  return GoogleFonts.workSans(
    textStyle: TextStyle(
      fontSize: 48,
      height: 56 / 48,
      fontWeight: FontWeight.w300,
      color: primaryTextColor,
    ),
  );
}

TextStyle get headerH2 {
  return GoogleFonts.workSans(
    textStyle: TextStyle(
      fontSize: 40,
      height: 40 / 48,
      fontWeight: FontWeight.w700,
      color: primaryTextColor,
    ),
  );
}

TextStyle get headerH3 {
  return GoogleFonts.workSans(
    textStyle: TextStyle(
      fontSize: 32,
      height: 40 / 32,
      fontWeight: FontWeight.w600,
      color: primaryTextColor,
    ),
  );
}

TextStyle get headerH3Light {
  return GoogleFonts.workSans(
    textStyle: TextStyle(
      fontSize: 32,
      height: 40 / 32,
      fontWeight: FontWeight.w300,
      color: primaryTextColor,
    ),
  );
}

TextStyle get headerH4 {
  return GoogleFonts.workSans(
    textStyle: TextStyle(
      fontSize: 28,
      height: 36 / 28,
      fontWeight: FontWeight.w600,
      color: primaryTextColor,
    ),
  );
}

TextStyle get headerH5 {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 22,
      height: 27 / 22,
      fontWeight: FontWeight.w600,
      color: primaryTextColor,
    ),
  );
}

TextStyle get headerH6 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 18,
      height: 26 / 18,
      fontWeight: FontWeight.w600,
      color: primaryTextColor,
    ),
  );
}

TextStyle get subHeader {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 16,
      height: 19 / 16,
      fontWeight: FontWeight.w400,
      color: primaryTextColor,
    ),
  );
}

TextStyle get stepperTextStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 16,
      height: 19.2 / 16,
      fontWeight: FontWeight.w700,
      color: primaryTextColor,
    ),
  );
}

TextStyle get insuranceStatusSubHeaderTextStyle {
  return GoogleFonts.workSans(
    textStyle: TextStyle(
      fontSize: 16.62,
      height: 19.5 / 16.62,
      fontWeight: FontWeight.w500,
      color: primaryTextColor1,
    ),
  );
}

TextStyle get bodyLG {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w500,
      color: primaryTextColor,
    ),
  );
}

TextStyle get bodyRG {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
      color: primaryTextColor,
    ),
  );
}

TextStyle get bodySM {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 12,
      height: 20 / 12,
      fontWeight: FontWeight.w400,
      color: primaryTextColor,
    ),
  );
}

TextStyle get bodyMD {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14,
      height: 16.94 / 14,
      fontWeight: FontWeight.w500,
      color: primaryTextColor,
    ),
  );
}

TextStyle get label {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
      color: primaryTextColor,
    ),
  );
}

TextStyle get label2 {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 12,
      height: 16 / 12,
      fontWeight: FontWeight.w800,
      decoration: TextDecoration.underline,
      color: primaryTextColor,
    ),
  );
}

TextStyle get inputTextStyle {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 16,
      height: 21.79 / 16,
      fontWeight: FontWeight.w400,
      color: primaryTextColor,
    ),
  );
}

TextStyle get buttonSM {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 12,
      height: 19 / 12,
      fontWeight: FontWeight.w600,
      color: primaryTextColor3,
    ),
  );
}

TextStyle get buttonLG {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w600,
      color: buttonTextColor,
    ),
  );
}

TextStyle get linksTextStyle {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14,
      height: 22,
      fontWeight: FontWeight.w600,
      color: primaryTextColor,
    ),
  );
}
