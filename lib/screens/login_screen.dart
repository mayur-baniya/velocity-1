// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/common/utilities/common_wave_indicator.dart';
import 'package:velocity/common/widgets/app_header_logo.dart';
import 'package:velocity/common/widgets/bottom_sheet.dart';
import 'package:velocity/screens/signup_screen.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity/themes/icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  bool isObscure = true;

  void setLoadin() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(milliseconds: 4000));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:
            (MediaQuery.of(context).platformBrightness == Brightness.light
                ? scaffoldLightColor
                : Colors.black),
        body: SafeArea(
          child: VxBox(
              child: Column(children: [
            VxBox(
                child: Column(children: [
              AppHeaderLogo(
                subtitleText: "Welcome back you've been missed",
              ).h24(context),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Email",
                    prefixIcon:  Icon(Icons.email_outlined),
                    ),
              ).marginSymmetric(vertical: 10),
              TextFormField(
                obscureText: isObscure,
                decoration: InputDecoration(
                    hintText: "Enter password",
                    suffixIcon: IconButton(
                        icon: Icon(
                          isObscure
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        }),
                    prefixIcon: Icon(Icons.lock_outline)),
              ).marginSymmetric(vertical: 10),
              isLoading
                  ? commonIndicator()
                  : ElevatedButton(
                          onPressed: () {
                            setLoadin();
                          },
                          child: "Login".text.make())
                      .marginSymmetric(vertical: 15),
              TextButton(
                      onPressed: () {
                        commonBottomSheet(
                            context,
                            "Reset Password!",
                            "How would you like to reset?",
                            VxBox()
                                .size(Get.width * 0.9, Get.height * 0.3)
                                .make());
                      },
                      child: 'Forgot password?'.text.bold.make())
                  .marginSymmetric(vertical: 10),
            ])).make(),
            VxBox(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                "------ Or Continue With -----"
                    .text
                    .makeCentered()
                    .marginSymmetric(vertical: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                              Size(MediaQuery.of(context).size.width / 3, 30)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: 'Facebook'.text.white.lg.bold.make()),
                    TextButton(
                        style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                              Size(MediaQuery.of(context).size.width / 3, 30)),
                          // padding:MaterialStateProperty.all(
                          //     EdgeInsets.symmetric(
                          //         vertical: 10, horizontal: 25)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: 'Google'.text.lg.bold.make()),
                  ],
                ).marginSymmetric(vertical: 15),
                InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Get.to(() => SignUpScreen(),
                          transition: Transition.cupertino,
                          duration: Duration(milliseconds: 500));
                    },
                    child: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(
                              fontSize: 15,
                              color: secondaryColor(context),
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.poppins().fontFamily)),
                      TextSpan(
                          text: 'Register now!',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.poppins().fontFamily))
                    ]))).marginSymmetric(vertical: 15),
              ],
            )).make().expand(),
          ])).make().marginSymmetric(horizontal: 20).h(context.screenHeight),
        ));
  }
}
