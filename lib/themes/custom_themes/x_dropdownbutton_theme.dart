import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

DropdownMenuThemeData ddlLightTheme = DropdownMenuThemeData(
    menuStyle: MenuStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white),
      // surfaceTintColor: MaterialStateProperty.all<Color>(primaryColor),
    ),
    inputDecorationTheme:
        InputDecorationTheme(fillColor: Vx.white, filled: true));

DropdownMenuThemeData ddlDarkTheme = DropdownMenuThemeData(
    menuStyle: MenuStyle(
      backgroundColor: MaterialStateProperty.all(Vx.gray400),
      // surfaceTintColor: MaterialStateProperty.all<Color>(primaryColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
        fillColor: Color.fromARGB(255, 34, 33, 33), filled: true));
