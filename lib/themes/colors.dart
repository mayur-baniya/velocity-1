import 'package:flutter/material.dart';

Color primaryColor = Color(0xFF229ED9);

secondaryColor(BuildContext context) =>
    (MediaQuery.of(context).platformBrightness == Brightness.light
        ? Colors.black
        : Colors.white);

Color bgLightColor = const Color(0xFF229ED9);
Color scaffoldLightColor = Color.fromARGB(255, 242, 245, 250);

//::::::::::::::::::::::::::::::: dark color ::::::::::::::::::::::::::::::::::::::::://

Color scaffoldDarkColor = Color(0xFF121212);
Color bgDarkColor = Colors.black;
