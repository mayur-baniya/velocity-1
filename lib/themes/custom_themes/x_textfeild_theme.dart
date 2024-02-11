import 'package:flutter/material.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity_x/velocity_x.dart';

InputDecorationTheme lightInpTheme = InputDecorationTheme(
  contentPadding: EdgeInsets.all(18),
  prefixIconColor: primaryColor,
  suffixIconColor: primaryColor,
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  enabledBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: Colors.transparent)),
  focusedBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(
      color: primaryColor,
      width: 2,
    ),
  ),
  focusedErrorBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(width: 2, color: Vx.red600),
  ),
  errorBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: Colors.transparent)),
  fillColor: Colors.white,
  filled: true,
);

InputDecorationTheme darkInpTheme = InputDecorationTheme(
  contentPadding: EdgeInsets.all(18),
  hintStyle: TextStyle(
    color: Colors.white60,
  ),
  prefixIconColor: primaryColor,
  suffixIconColor: primaryColor,
  enabledBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: Colors.transparent)),
  focusedBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(
      color: primaryColor,
      width: 2,
    ),
  ),
  focusedErrorBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(width: 2, color: Vx.red600),
  ),
  errorBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: Colors.transparent)),
  fillColor: Color.fromARGB(255, 34, 33, 33),
  filled: true,
);
