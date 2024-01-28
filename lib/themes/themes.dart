import 'package:flutter/material.dart';
import 'package:velocity/themes/colors.dart';

import 'custom_themes/XElevatedButtonTheme.dart';
import 'custom_themes/XTextFieldTheme.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  useMaterial3: true,
   scaffoldBackgroundColor: Colors.white,
  primaryColor: ThemeData.dark().scaffoldBackgroundColor,
  inputDecorationTheme: lightInpTheme,
  elevatedButtonTheme: lightBtnTheme,
);

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  scaffoldBackgroundColor: darkBackgroundColor,
  primaryColor: ThemeData.dark().scaffoldBackgroundColor,
  useMaterial3: true,
  inputDecorationTheme: darkInpTheme,
  elevatedButtonTheme: darkBtnTheme,
);
