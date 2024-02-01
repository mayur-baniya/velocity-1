// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

secondaryColor(BuildContext context) =>(
   MediaQuery.of(context).platformBrightness == Brightness.light 
      ? Colors.black 
      : Colors.white
);


Color primaryColor = Color(0xFF229ED9);

Color bgLightColor = const Color(0xFF229ED9);
Color scaffoldLightColor = Color.fromARGB(255, 242, 245, 250);

//::::::::::::::::::::::::::::::: dark color ::::::::::::::::::::::::::::::::::::::::://

Color scaffoldDarkColor = Color(0xFF121212);
Color bgDarkColor = Colors.black;
