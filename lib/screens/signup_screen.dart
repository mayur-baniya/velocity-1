import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final city = ['Nagpur', 'Bhandara', 'Wardha'];
  var selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VxBox()
                .color(Colors.black)
                .width(Get.width * 1)
                .height(Get.height * 0.15)
                .make(),
            "Let's create your Account".text.size(16).make().p12(),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person), hintText: "eg: John Doe"),
            ).marginSymmetric(horizontal: 15).paddingOnly(top: 10),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), hintText: "Email Address"),
            ).marginSymmetric(horizontal: 15).paddingOnly(top: 10),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone), hintText: "Phone Number"),
            ).marginSymmetric(horizontal: 15).paddingOnly(top: 10),


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
                            .paddingSymmetric(horizontal: 15)
                            )
                    .width(Get.width * 0.5)
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
                            .paddingSymmetric(horizontal: 15)
                            )
                    .width(Get.width * 0.5)
                    .height(Get.height * 0.1)
                    .make(),
              ],
            ),
          ],
        ),
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
