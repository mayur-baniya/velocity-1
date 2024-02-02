import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

commonBottomSheet(BuildContext context, String heading, String subHeading, Widget widget) {
  return showModalBottomSheet(
    backgroundColor: Get.theme.primaryColor,
      context: context,
      builder: (context) => SingleChildScrollView(
        child: VxBox(
                child: Row(
              children: [
                Column(
                  children: [
                    heading.text.xl4.make(),
                    subHeading.text.bold.make(),
                    widget,
                  ],
                ).expand(),
              ],
            )).p20.make(),
      ));
}
