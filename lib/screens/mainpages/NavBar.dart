// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity/themes/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(

            decoration: BoxDecoration(
              border: Border(bottom: BorderSide.none),
              color: MediaQuery.of(context).platformBrightness == Brightness.dark ? bgDarkColor : scaffoldLightColor,
            ),

            accountName: "Tashii".text.make(),
            accountEmail: "tashii@mail.com".text.make(),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey,
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/images/defaultpfp.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite_border_outlined,
              color: secondaryColor(context),
            ),
            title: "Favourite".text.color(secondaryColor(context)).make(),
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
            title:
                "Upcoming Vehicles".text.color(secondaryColor(context)).make(),
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
            onTap: () {},
          ),
       
          ListTile(
            title: "Version: 1.0.0".text.color(secondaryColor(context)).make(),
            onTap: () {}, // Adjust color if needed
          ),
        ],
      ),
    );
  }
}
