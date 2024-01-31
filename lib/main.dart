import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:velocity/screens/login_screen.dart';
import 'package:velocity/screens/signup_screen.dart';
import 'package:velocity/screens/test.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity/themes/themes.dart';

main() async {
  await dotenv.load(fileName: 'assets/config/.env');
  // SystemChrome.setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(const MyApp());
}

void setStatusBarColor(BuildContext context) {
  Brightness brightness = MediaQuery.of(context).platformBrightness;
  Color statusBarColor =
      brightness == Brightness.dark ? Colors.black : Colors.blue;

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: statusBarColor,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    setStatusBarColor(context);
    print("envtest: ${dotenv.env['appname']}");
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Velocity',
      theme: lightTheme,
      darkTheme: darkTheme,
      // themeMode: ThemeMode.system,
      home: SignUpScreen(), //LoginScreen()SignUpScreen
    );
  }
}
