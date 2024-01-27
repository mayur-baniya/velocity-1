import 'package:flutter/material.dart';
import 'package:velocity/themes/colors.dart';

class ThemeClass{






// :::::::::::::::::::::::::: light theme ::::::::::::::::::::::::::::: //
static ThemeData lightTheme = ThemeData(

  

  scaffoldBackgroundColor: Colors.white,
  useMaterial3: true,
  primaryColor: ThemeData.light().scaffoldBackgroundColor,



);


//::::::::::::::::::::::::::::: dark theme:::::::::::::::::::::::::::::::::::// 
static ThemeData darkTheme = ThemeData(

  useMaterial3: true,
  primaryColor: ThemeData.dark().scaffoldBackgroundColor,

);


}
