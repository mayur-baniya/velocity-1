// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        VxBox(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VxBox().width(Get.width * 0.6).make(),
                "Tashii".text.make(),
                "tashii@mail.com".text.make(),
              ],
            ),
            VxBox(
             
            )
                .withDecoration(BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/defaultpfp.png'),
                        fit: BoxFit.contain)))
                .make()
                .expand()
          ],
        ))
        .size(Get.width * 0.9, Get.height * 0.2).makeCentered(),

        VxBox(
          child: "Edit Profile".
          text
          .color(primaryColor)
          .make().p1()
        ).withDecoration(
          BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 0.1,
              color: secondaryColor(context)
            )
          )
        )
        .width(Get.width * 0.9)
        .alignCenter
        .makeCentered()


      ],
    ));
  }
}
