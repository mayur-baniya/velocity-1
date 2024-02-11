import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

commonBottomSheet(
    BuildContext context, String heading, String subHeading, Widget widget) {
  return showModalBottomSheet(
      backgroundColor: Get.theme.primaryColor,
      context: context,
      builder: (context) => VxBox(
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
          )).p20.make());
}


String terms = 'Culpa incididunt aliqua velit dolore. Voluptate commodo eu enim enim deserunt deserunt et et excepteur aute. Duis consequat voluptate tempor voluptate. Irure eiusmod eu voluptate dolore eiusmod irure sunt elit in quis consequat eu commodo sit. Lorem non minim consectetur ea. Aliqua consectetur mollit labore aliquip eu voluptate tempor non. Ipsum aute eiusmod sit consectetur velit cupidatat qui ipsum et culpa labore tempor pariatur.esse amet consequat. Laborum non ea occaecat sunt aliquip amet. Do laborum culpa Lorem proident aliquip consectetur aliqua minim occaecat. Dolore duis exercitation anim esse voluptate. In ad esse elit laborum. minim culpa ea cupidatat culpa dolore ut esse adipisicing reprehenderit voluptate. Ea et cupidatat velit nulla qui elit sit nostrud dolore incididunt esse tempor. Lorem amet incididunt excepteur tempor aute proident velit aliqua sit minim pariatur';