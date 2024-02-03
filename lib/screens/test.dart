import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final city = ['Nagpur', 'Bhandara', 'Wardha'];
  var selectedCity;

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        
        return VxBox()
        .size(Get.width * 0.8, Get.height * 0.5)
        .withDecoration(
          BoxDecoration(
            color: Vx.randomColor,
            borderRadius: BorderRadius.circular(11)
          )
        )
        .make().paddingAll(10);
    },);

  }

}
