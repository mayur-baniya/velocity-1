// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color primaryColor = Color(0xFF229ED9);

secondaryColor(BuildContext context) =>
    (MediaQuery.of(context).platformBrightness == Brightness.light
        ? Colors.black
        : Colors.white);

helperColor(BuildContext context) =>
    (MediaQuery.of(context).platformBrightness == Brightness.light
        ? Colors.white38
        : Color.fromARGB(255, 29, 29, 29));
bool isDarkMode(BuildContext context) =>
    (MediaQuery.of(context).platformBrightness == Brightness.light
        ? false
        : true);

//::::::::::::::::::::::::::::::: light color ::::::::::::::::::::::::::::::::::::::::://

Color bgLightColor = const Color(0xFF229ED9);
Color scaffoldLightColor = Color.fromARGB(255, 242, 245, 250);

//::::::::::::::::::::::::::::::: dark color ::::::::::::::::::::::::::::::::::::::::://

Color scaffoldDarkColor = Color(0xFF121212);
Color bgDarkColor = Colors.black;

//Icon IconData = (BuildContext context) => ((MediaQuery.of(context).platformBrightness == Brightness.dark ? Icon(CupertinoIcons.moon_stars_fill)   : Icon(CupertinoIcons.sun_dust));
//Icon IconData = (BuildContext context) => ((MediaQuery.of(context).platformBrightness == Brightness.dark ? Icon(CupertinoIcons.moon_stars_fill)   : Icon(CupertinoIcons.sun_dust));

Color getColorBasedOnTheme() {
  print("modeeeeeeeee");
  print(Get.isPlatformDarkMode);
  if (Get.isDarkMode) {
    // Dark mode is enabled
    return Colors.black;
  } else {
    // Light mode is enabled
    return Colors.white;
  }
}
