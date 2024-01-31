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
    return VxBox(
        child: Flexible(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBox(
              child: DropdownButtonFormField(
            items: city.map(buildMenuItems).toList(),
            onChanged: (value) {
              setState(() {
                this.selectedCity = value;
              });
            },
          )).blue100.make().marginOnly(right: 5).expand(),
        ],
      ),
    )).make().marginSymmetric(horizontal: 20);
  }

  DropdownMenuItem<String> buildMenuItems(String city) => DropdownMenuItem(
        value: city,
        child: Text(
          city,
          style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
        ),
      );
}
