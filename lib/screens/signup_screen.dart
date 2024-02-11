import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/common/utilities/common_wave_indicator.dart';
import 'package:velocity/common/validation.dart';
import 'package:velocity/common/widgets/app_header_logo.dart';
import 'package:velocity/common/widgets/bottom_sheet.dart';
import 'package:velocity/screens/mainpages/home_screen.dart';
import 'package:velocity/services/authentication.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity/themes/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _nameKey = GlobalKey<FormFieldState>();
  final _emailKey = GlobalKey<FormFieldState>();
  final _phoneKey = GlobalKey<FormFieldState>();
  final _passwordKey = GlobalKey<FormFieldState>();
  final _confirmPassKey = GlobalKey<FormFieldState>();

  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;
  bool isLoading = false;

  void Signup(BuildContext context) async {
    if (validateForm(
        [_nameKey, _emailKey, _phoneKey, _passwordKey, _confirmPassKey])) {
      setState(() {
        isLoading = true;
      });
      try {
        var signupResp = await signupService(
            nameController.text,
            emailController.text,
            passwordController.text,
            passwordController.text);
        print('loginResp: ${signupResp}');
        var resp = jsonDecode(signupResp.body);
        if (signupResp.statusCode == 200) {
          if (resp['Status'] == 'USER_CREATED_SUCCESSFULLY') {
            Get.to(() => HomeScreen(),
                transition: Transition.cupertino,
                duration: Duration(milliseconds: 500));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: '${resp['Error']}'.text.make()),
            );
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: '${resp['Error']}'.text.make()),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: '${e}'.text.make()),
        );
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SafeArea(
        child: Scaffold(
          backgroundColor:
              (MediaQuery.of(context).platformBrightness == Brightness.light
                  ? scaffoldLightColor
                  : Colors.black),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  AppHeaderLogo(
                    subtitleText: "Let's create your account",
                  ).h16(context),
                  TextFormField(
                    key: _nameKey,
                    controller: nameController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "eg: John Doe"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Name can't be empty";
                      } else if (value.length <= 1 || value.length > 20) {
                        return "Invalid name";
                      } else {
                        return null;
                      }
                    },
                  ).marginSymmetric(vertical: 3),
                  TextFormField(
                    controller: emailController,
                    key: _emailKey,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: "Email Address"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your Email address";
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,5}')
                          .hasMatch(value)) {
                        return 'Please Enter a valid email';
                      }
                    },
                  ).marginSymmetric(vertical: 3),
                  TextFormField(
                    controller: phoneController,
                    key: _phoneKey,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                    ],
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: "Phone Number"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your number';
                      }
                      if (!RegExp(r'^[6789]\d{9}$').hasMatch(value)) {
                        return 'Not a valid number';
                      }
                      return null;
                    },
                  ).marginSymmetric(vertical: 3),
                  TextFormField(
                    key: _passwordKey,
                    controller: passwordController,
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: "Password",
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
                    ),
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
                  ).marginSymmetric(vertical: 3),
                  TextFormField(
                    key: _confirmPassKey,
                    controller: confirmPasswordController,
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: "Confirm Password",
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
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please confirm your Password";
                      } else if (!RegExp(r'^\S*$').hasMatch(value)) {
                        return "Password should not contain Spaces";
                      } else if (value != passwordController.text) {
                        return "Passwords do not match";
                      }
                    },
                  ).marginSymmetric(vertical: 3),
                  'By clicking on submit you will agree to our '
                      .text
                      .make()
                      .marginOnly(top: 5),
                  TextButton(
                      onPressed: () {
                        commonBottomSheet(
                            context,
                            "Terms & Conditions!",
                            "This is our terms and conditions",
                            SingleChildScrollView(
                              child: VxBox(child: terms.text.make()).make(),
                            ).centered());
                      },
                      child: 'Terms & conditions'.text.bold.make()),
                  ElevatedButton(
                          onPressed: () {
                            Signup(context);
                          },
                          child: isLoading
                              ? commonIndicator(context)
                              : "Submit".text.make())
                      .marginSymmetric(vertical: 5),
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
                              onPressed: () {},
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
                              onPressed: () {},
                              child: 'Google'.text.lg.bold.make()),
                        ],
                      ).marginSymmetric(vertical: 15),
                      InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            Get.back();
                          },
                          child: RichText(
                              text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Already Registred? ',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: secondaryColor(context),
                                    fontWeight: FontWeight.bold,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily)),
                            TextSpan(
                                text: 'Login Now!',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily))
                          ]))).marginSymmetric(vertical: 15),
                    ],
                  )).make(),
                ],
              ),
            ).marginSymmetric(horizontal: 20),
          ),
        ),
      ),
    );
  }
}
