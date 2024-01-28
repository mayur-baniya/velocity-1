import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity/themes/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isDark = false;

  setDarkMode() {
    isDark = !isDark;
    if (isDark) {
      setState(() {
        Get.changeThemeMode(ThemeMode.light);
      });
    } else {
      setState(() {
        Get.changeThemeMode(ThemeMode.dark);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: "Velocity".text.xl2.bold.make(),
          actions: [
            Switch(
                value: isDark,
                onChanged: (value) {
                  setState(() {
                    setDarkMode();
                  });
                  print(value);
                })
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VxBox(
                child: SingleChildScrollView(
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Email",
                      prefixIcon: Icon(Icons.mail_outline_rounded)),
                ).marginSymmetric(vertical: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter password",
                      prefixIcon: Icon(Icons.lock_outline)),
                ).marginSymmetric(vertical: 10),
                ElevatedButton(onPressed: () {}, child: "Submit".text.make())
              ]),
            )).make().marginSymmetric(horizontal: 20)
          ],
        ));
  }
}
