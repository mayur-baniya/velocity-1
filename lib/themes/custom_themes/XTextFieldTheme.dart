import 'package:flutter/material.dart';

InputDecorationTheme lightInpTheme = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    focusedBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: Colors.blue, width: 3),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11), borderSide: BorderSide.none),
    contentPadding: EdgeInsets.all(18),
    errorBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: Colors.red, width: 3),
    ));


InputDecorationTheme darkInpTheme = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    focusedBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: Colors.blue, width: 3),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11), borderSide: BorderSide.none),
    contentPadding: EdgeInsets.all(18),
    errorBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: Colors.red, width: 3),
    ));
