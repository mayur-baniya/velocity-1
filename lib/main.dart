import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:velocity/screens/login_screen.dart';
import 'package:velocity/screens/mainpages/bottomnav.dart';
import 'package:velocity/screens/signup_screen.dart';
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
      brightness == Brightness.dark ? Colors.black : scaffoldLightColor;

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: statusBarColor,
      statusBarIconBrightness:
          brightness == Brightness.dark ? Brightness.light : Brightness.dark));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    setStatusBarColor(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Velocity',
      theme: lightTheme,
      darkTheme: darkTheme,
      // themeMode: ThemeMode.system,
      home: BottomTest(), //LoginScreen()SignUpScreen
    );
  }
}
