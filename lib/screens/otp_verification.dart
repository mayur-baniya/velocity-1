import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({
    super.key,
    required this.email,
  });

  String email;
  @override
  State<OtpScreen> createState() => _OtpScreenState(email: email);
}

class _OtpScreenState extends State<OtpScreen> {
  _OtpScreenState({
    required this.email,
  });

  final _formKey = GlobalKey<FormState>();

  late Timer _timer;
  int _start = 60;
  bool submitButton = false;
  String email;
  late String enteredOtp;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            VxBox(
                    child: Icon(
              Icons.email_outlined,
              size: 50,
              color: secondaryColor(context),
            ))
                .size(Get.width * 1, Get.height * 0.1)
                .make()
                .marginSymmetric(vertical: 50),
            "Check your Email application"
                .text
                .semiBold
                .color(secondaryColor(context))
                .size(18)
                .make(),
            "The OTP has been sent to your registered email."
                .text
                .make()
                .marginOnly(top: 20, bottom: 7),
            "$email".text.make().marginOnly(bottom: 30),
            Expanded(
              child: Pinput(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "*";
                  }
                  return null;
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onCompleted: (val) {
                  submitButton = true;
                  this.enteredOtp = val;
                },
                onChanged: (val) {
                  submitButton = false;
                },
              ),
            ),
            submitButton
                ? Expanded(
                    child: VxBox(
                    child: FloatingActionButton(
                        backgroundColor: primaryColor,
                        foregroundColor: secondaryColor(context),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print("processing data");
                          }
                        },
                        child: Icon(Icons.arrow_right_alt)),
                  ).makeCentered())
                : Expanded(
                    child: TextButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent)),
                    child: "Didn't get the code? ".text.semiBold.make().onTap(() {
                      if (_start != 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(
                                  'You can request a new OTP after ${_start} seconds')),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('processing data...')),
                        );
                      }
                    }),
                    onPressed: () {},
                  )),
          ],
        ),
      ),
    );
  }
}
