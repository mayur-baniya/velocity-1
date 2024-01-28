import 'package:flutter/material.dart';
import 'package:velocity/themes/colors.dart';

InputDecorationTheme lightInpTheme = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    prefixIconColor: primaryColor,
    focusedBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: const BorderSide(color: Colors.blue, width: 3),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11), borderSide: BorderSide.none),
    contentPadding: const EdgeInsets.all(18),
    errorBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: const BorderSide(color: Colors.red, width: 3),
    ));

InputDecorationTheme darkInpTheme = InputDecorationTheme(
    fillColor: const Color.fromARGB(255, 34, 33, 33),
    filled: true,
    prefixIconColor: primaryColor,
    focusedBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: const BorderSide(color: Colors.blue, width: 3),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11), borderSide: BorderSide.none),
    contentPadding: const EdgeInsets.all(18),
    errorBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: const BorderSide(color: Colors.red, width: 3),
    ));
