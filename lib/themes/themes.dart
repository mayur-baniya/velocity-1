import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/themes/colors.dart';

import 'custom_themes/XElevatedButtonTheme.dart';
import 'custom_themes/XTextFieldTheme.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  primarySwatch: Colors.blue,
  useMaterial3: true,
  inputDecorationTheme: lightInpTheme,
  elevatedButtonTheme: lightBtnTheme,
);

ThemeData darkTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  useMaterial3: true,
  inputDecorationTheme: darkInpTheme,
  elevatedButtonTheme: darkBtnTheme,
);
