import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity_x/velocity_x.dart';

ElevatedButtonThemeData lightBtnTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    textStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.bold),
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    minimumSize: Size(double.infinity, 50),
  ),
);

ElevatedButtonThemeData darkBtnTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    splashFactory: InkSparkle.splashFactory,
    textStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.bold),
    backgroundColor: bgDarkColor,
    foregroundColor: primaryColor,
    shape: RoundedRectangleBorder(
      side: BorderSide(width: 1, color: primaryColor),
      borderRadius: BorderRadius.circular(8),
    ),
    minimumSize: Size(double.infinity, 50),
  ),
);
