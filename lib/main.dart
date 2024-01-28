import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity/screens/login_screen.dart';
import 'package:velocity/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Velocity',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: LoginScreen(),
        
        );
  }
}
