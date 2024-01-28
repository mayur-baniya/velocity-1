import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        themeMode: ThemeMode.dark,
        home: Scaffold(
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(child: Text('Example Text')),

              Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter email and pass", 
                  ),
                ),
              )
            ],
          )
        ));
  }
}
