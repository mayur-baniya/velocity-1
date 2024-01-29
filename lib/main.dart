import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:velocity/screens/login_screen.dart';
import 'package:velocity/themes/themes.dart';

main() async {
  await dotenv.load(fileName: 'assets/config/.env');
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("envtest: ${dotenv.env['appname']}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Velocity',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: LoginScreen(),
    );
  }
}
