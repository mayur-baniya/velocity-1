// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity/common/widgets/app_header_logo.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity/themes/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final city = ['Nagpur', 'Bhandara', 'Wardha'];
  var selectedCity;
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: 
            (MediaQuery.of(context).platformBrightness == Brightness.light 
                ? scaffoldLightColor 
                : Colors.black), 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeaderLogo(
                subtitleText: "Let's create your Account",
              ).h16(context),
                  
             
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person), hintText: "eg: John Doe"),
              ).marginSymmetric(vertical: 5),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email), hintText: "Email Address"),
              ).marginSymmetric(vertical: 5),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone), hintText: "Phone Number"),
              ).marginSymmetric(vertical: 5),
        
        
              Row(
                children: [
                  VxBox(
                          child: DropdownButtonFormField(
                                  items: city.map(buildMenuItems).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      this.selectedCity = value;
                                    });
                                  },
                                  
                                  )
                              .marginOnly(top: 10)
                              )
                      .width(Get.width * 0.45)
                      .height(Get.height * 0.1)
                      .make(),
          
                        VxBox(
                          child: DropdownButtonFormField(
                                  items: city.map(buildMenuItems).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      this.selectedCity = value;
                                    });
                                  })
                              .marginOnly(top: 10)
                              )
                      .width(Get.width * 0.44)
                      .height(Get.height * 0.1)
                      .make(),
                ],
              ),

              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_rounded), hintText: "Set Password"),
              ).marginSymmetric(vertical: 5),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_rounded), hintText: "Confirm Password"),
              ).marginSymmetric(vertical: 5),



              VxBox(

                

              ).make()




            ],
          ),
        ).marginSymmetric( horizontal: 20),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItems(String city) => DropdownMenuItem(
        value: city,
        child: Text(
          city,
          style:const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      );
}
