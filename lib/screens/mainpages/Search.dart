// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity/themes/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        VxBox(
            child: Icon(
          Icons.search,
          size: 200,
          color: secondaryColor(context),
        )).size(200, 200).makeCentered().onTap(() {
          showDialog(
            context: context,
            builder: (context) {
              return VxBox(
                      child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.warning_amber_outlined,
                      color: Colors.redAccent,
                      size: 50,
                    ).marginOnly(top: 10),
                    "Oh snap!".text.bold.size(24).make(),
                    "An Error has occured while fetching your account details"
                        .text
                        .semiBold
                        .center
                        .make()
                        .p12(),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        VxBox(
                                child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            VxBox(
                                    child: "Submit"
                                        .text
                                        .color(primaryColor)
                                        .make())
                                .alignCenter
                                .color(helperColor(context))
                                .make()
                                .expand(),
                            VxBox(child: "Clear".text.make())
                                .alignCenter
                                .color(helperColor(context))
                                .make()
                                .expand(),
                          ],
                        ))
                            //  .color(Colors.grey)
                            .make()
                            .expand()
                      ],
                    )
                  ],
                ),
                Positioned(
                  top: -5 ,
                  right: 5,
                  child: Icon(
                      CupertinoIcons.xmark,
                      color: Colors.redAccent,
                      size: 20,
                    ).marginOnly(top: 10),)

              ]))
                  .size(Get.width * 0.8, Get.height * 0.30)
                  .withDecoration(BoxDecoration(
                      color: helperColor(context),
                      borderRadius: BorderRadius.circular(11)))
                  .makeCentered();
            },
          );
        })
      ],
    ));
  }
}
