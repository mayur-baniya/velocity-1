import 'package:flutter/material.dart';
import 'package:velocity/themes/colors.dart';




InputDecorationTheme lightInpTheme = InputDecorationTheme(

  
    prefixIconColor: primaryColor,
    suffixIconColor:primaryColor,

  enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11), borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11), borderSide: BorderSide.none),
    errorBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(11),
        borderSide: BorderSide(color: Colors.transparent)),

    fillColor: Colors.white,
    filled: true, 
  );


 



InputDecorationTheme darkInpTheme = InputDecorationTheme(
   
   
    prefixIconColor: primaryColor,
    suffixIconColor:primaryColor,

  enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11), borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(11), borderSide: BorderSide.none),
    errorBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(11),
        borderSide: BorderSide(color: Colors.transparent)),

    fillColor:  Color.fromARGB(255, 34, 33, 33),
    filled: true,
   );
  
