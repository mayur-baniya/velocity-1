import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ElevatedButtonThemeData lightBtnTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    textStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 17,
        fontWeight: FontWeight.bold),
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    minimumSize: Size(double.infinity, 50),
  ),
);

ElevatedButtonThemeData darkBtnTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    textStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 17,
        fontWeight: FontWeight.bold),
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    minimumSize: Size(double.infinity, 50),
  ),
);
