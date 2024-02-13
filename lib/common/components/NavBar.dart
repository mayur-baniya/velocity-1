// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity/statemanager/states_store.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity/themes/colors.dart';

Widget myDrawer(BuildContext context, ThemeController themeController) {
  return Drawer(
    child: GetBuilder<ThemeController>(
        init: themeController,
        builder: (controller) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                arrowColor: Colors.white,
                decoration: BoxDecoration(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? bgDarkColor
                      : bgLightColor,
                ),
                accountName: "Tashii".text.bold.white.make(),
                accountEmail: "tashii@mail.com".text.white.bold.make(),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('assets/images/defaultpfp.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ).paddingZero.marginZero,
              ListTile(
                leading: Icon(
                  Icons.favorite_border_outlined,
                  color: secondaryColor(context),
                ),
                title: "Favorite".text.color(secondaryColor(context)).make(),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.interests_outlined,
                  color: secondaryColor(context),
                ),
                title: "Interests".text.color(secondaryColor(context)).make(),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.new_releases_outlined,
                  color: secondaryColor(context),
                ),
                title: "Upcoming Vehicles"
                    .text
                    .color(secondaryColor(context))
                    .make(),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.share_rounded,
                  color: secondaryColor(context),
                ),
                title: "Share App".text.color(secondaryColor(context)).make(),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.question_mark,
                  color: secondaryColor(context),
                ),
                title: "About us".text.color(secondaryColor(context)).make(),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.settings_outlined,
                  color: secondaryColor(context),
                ),
                title: "Settings".text.color(secondaryColor(context)).make(),
                onTap: () {
                  // Get.to(()=> ());
                },
              ),
              ListTile(
                title:
                    "Version: 1.0.0".text.color(secondaryColor(context)).make(),
                onTap: () {}, // Adjust color if needed
              ),
            ],
          );
        }),
  );
}
