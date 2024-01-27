import 'package:flutter/material.dart';
import 'package:velocity/autentications/login.dart';
import 'package:velocity_x/velocity_x.dart';
import 'autentications/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: lightTheme,
      // darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: LoginScreen(),
    );
  }
}
