import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/themes/colors.dart';

TextTheme lightTextTheme = TextTheme(
  bodyMedium: TextStyle(
      color: Colors.black, fontFamily: GoogleFonts.poppins().fontFamily),
  bodyLarge: TextStyle(
      color: Colors.black, fontFamily: GoogleFonts.poppins().fontFamily),
  bodySmall: TextStyle(
      color: Colors.black, fontFamily: GoogleFonts.poppins().fontFamily),
);

TextTheme darkTextTheme = TextTheme(
  bodyMedium: TextStyle(
      color: Colors.white, fontFamily: GoogleFonts.poppins().fontFamily),
  bodyLarge: TextStyle(
      color: Colors.white, fontFamily: GoogleFonts.poppins().fontFamily),
  bodySmall: TextStyle(
      color: Colors.white, fontFamily: GoogleFonts.poppins().fontFamily),
);
