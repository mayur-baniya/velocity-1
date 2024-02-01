import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class AppHeaderLogo extends StatelessWidget {
  final String? subtitleText;
  const AppHeaderLogo({super.key, this.subtitleText});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: 'V',
                style: TextStyle(
                    fontSize: 45,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.aclonica().fontFamily)),
            TextSpan(
                text: 'elocity',
                style: TextStyle(
                    color: secondaryColor(context),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.aclonica().fontFamily))
          ])),
          "$subtitleText".text.xl.make()
        ],
      ),
    ).make().centered();
  }
}
