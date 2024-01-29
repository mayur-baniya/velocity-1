import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity/themes/custom_themes/x_drawer_theme.dart';
import 'custom_themes/x_elevatedbutton_theme.dart';
import 'custom_themes/x_textfeild_theme.dart';
import 'custom_themes/x_text_theme.dart';

ThemeData lightTheme = ThemeData(
  textTheme: lightTextTheme,
  fontFamily: GoogleFonts.poppins().fontFamily,
  appBarTheme: AppBarTheme(
    backgroundColor: bgLightColor,
    foregroundColor: scaffoldLightColor,
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: scaffoldLightColor,
  primaryColor: ThemeData.light().scaffoldBackgroundColor,
  inputDecorationTheme: lightInpTheme,
  elevatedButtonTheme: lightBtnTheme,
  drawerTheme: lightDrawerTheme,
);

ThemeData darkTheme = ThemeData(
  textTheme: darkTextTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: bgDarkColor,
    foregroundColor: scaffoldLightColor,
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: scaffoldDarkColor,
  primaryColor: ThemeData.dark().scaffoldBackgroundColor,
  inputDecorationTheme: darkInpTheme,
  elevatedButtonTheme: darkBtnTheme,
  drawerTheme: darkDrawerTheme,
);
