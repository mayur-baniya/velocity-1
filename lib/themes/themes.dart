import 'package:flutter/material.dart';

import 'custom_themes/XElevatedButtonTheme.dart';
import 'custom_themes/XTextFieldTheme.dart';

ThemeData lightTheme = ThemeData(

  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  inputDecorationTheme: lightInpTheme,
  elevatedButtonTheme: lightBtnTheme,
);

ThemeData darkTheme = ThemeData(

  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  scaffoldBackgroundColor: Color(0xFF121212),
  primaryColor: ThemeData.dark().scaffoldBackgroundColor,
  useMaterial3: true,
  inputDecorationTheme: darkInpTheme,
  elevatedButtonTheme: darkBtnTheme,
);
