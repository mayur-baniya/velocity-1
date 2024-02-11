// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity/themes/colors.dart';

BottomNavigationBarThemeData lightBottomNavBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: scaffoldLightColor,
  showUnselectedLabels: false,
  showSelectedLabels: true,
  selectedIconTheme: IconThemeData(
    color: primaryColor,

  ),
  unselectedIconTheme: IconThemeData(
    color: Colors.grey,
  ),
  elevation: 13,
);

BottomNavigationBarThemeData darkBottomNavBarThemeData =
    BottomNavigationBarThemeData(
   showUnselectedLabels: false,
    showSelectedLabels: true,

  backgroundColor: scaffoldDarkColor,
  selectedIconTheme: IconThemeData(
    color: primaryColor,
  ),
  unselectedIconTheme: IconThemeData(
    color: Colors.grey,
  ),
  elevation: 13,
);
