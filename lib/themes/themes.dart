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
  scaffoldBackgroundColor: Colors.white,
  primaryColor: ThemeData.dark().scaffoldBackgroundColor,
  inputDecorationTheme: lightInpTheme,
  elevatedButtonTheme: lightBtnTheme,
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: darkBackgroundColor,
  primaryColor: ThemeData.dark().scaffoldBackgroundColor,
  fontFamily: GoogleFonts.poppins().fontFamily,
  useMaterial3: true,
  inputDecorationTheme: darkInpTheme,
  elevatedButtonTheme: darkBtnTheme,
);
