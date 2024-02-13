// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/common/utilities/common_wave_indicator.dart';
import 'package:velocity/common/widgets/app_header_logo.dart';
import 'package:velocity/common/widgets/bottom_sheet.dart';
import 'package:velocity/screens/mainpages/home_screen.dart';
import 'package:velocity/screens/otp_verification.dart';
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
  final _formKey = GlobalKey<FormState>();

  void setLoadin() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(milliseconds: 2000));
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
        body: Form(
          key: _formKey,
          child: SafeArea(
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
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your Email address";
                    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,5}')
                        .hasMatch(value)) {
                      return 'Please Enter a valid email';
                    }
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password can't be empty";
                    } else if (value.length < 6) {
                      return "Password should be atleast 6 characters long";
                    } else if (value.length > 50) {
                      return "what are you trying to do?";
                    } else if (!RegExp(r'^\S*$').hasMatch(value)) {
                      return "Password should not contain Spaces";
                    }
                  },
                ).marginSymmetric(vertical: 10),
                isLoading
                    ? commonIndicator()
                    : ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                setLoadin();
                                Get.to(() => HomeScreen(),
                                    transition: Transition.cupertino,
                                    duration: Duration(milliseconds: 500));
                              }
                            },
                            child: "Login".text.make())
                        .marginSymmetric(vertical: 15),
                TextButton(
                        onPressed: () {
                          commonBottomSheet(
                              context,
                              "Reset Password!",
                              "How would you like to reset?",

                              // temporary data, will replace it later 
                              VxBox(
                                      child: Column(
                                children: [
                                  VxBox(
                                          child: ListTile(
                                    leading: Icon(
                                      Icons.email_outlined,
                                      color: primaryColor,
                                    ),
                                    title: "Via Email Verification"
                                        .text
                                        .color(secondaryColor(context))
                                        .make(),
                                    trailing: Icon(Icons.arrow_right, color: primaryColor,),
                                  ))
                                      .withDecoration(BoxDecoration(
                                          color: helperColor(context),
                                          borderRadius:
                                              BorderRadius.circular(11)))
                                      .size(Get.width * 0.9, Get.height * 0.07)
                                      .make()
                                      .marginOnly(top: 20).onTap(() {
                                        Get.to(() => OtpScreen(email: "",));
                                      }),
                                  VxBox(
                                          child: ListTile(
                                    leading: Icon(
                                      Icons.phone_callback_outlined,
                                      color: primaryColor,
                                    ),
                                    title: "Via Phone Verification"
                                        .text
                                        .color(secondaryColor(context))
                                        .make(),
                                    trailing: Icon(Icons.arrow_right, color: primaryColor,),
                                  ))
                                      .withDecoration(BoxDecoration(
                                          color: helperColor(context),
                                          borderRadius:
                                              BorderRadius.circular(11)))
                                      .size(Get.width * 0.9, Get.height * 0.07)
                                      .make()
                                      .marginOnly(top: 20),
                                ],
                              ))
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
                            fixedSize: MaterialStatePropertyAll(Size(
                                MediaQuery.of(context).size.width / 3, 30)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Get.to(()=> HomeScreen());
                          },
                          child: 'Facebook'.text.white.lg.bold.make()),
                      TextButton(
                          style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(
                                MediaQuery.of(context).size.width / 3, 30)),
                            // padding:MaterialStateProperty.all(
                            //     EdgeInsets.symmetric(
                            //         vertical: 10, horizontal: 25)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.redAccent),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {
                            // GetCupertinoApp.router()
                         
                          },
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
          ),
        ));
  }
}
