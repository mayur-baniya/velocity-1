import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity/screens/mainpages/NavBar.dart';
import 'package:velocity/screens/signup_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity/themes/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      //  backgroundColor:
      //       (MediaQuery.of(context).platformBrightness == Brightness.light
      //           ? scaffoldLightColor
      //           : Colors.black),
      appBar: AppBar(
        centerTitle: true,
        title: "Velocity".text.make(),
        actions: [
          Icon(Icons.favorite_outline).marginOnly(right: 10),
          Icon(Icons.person).marginOnly(right: 10)
        ],
      ),
      drawer: NavBar(),
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
         if(details.primaryVelocity! > 10){
          Get.to(()=> SignUpScreen());
         } 
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VxBox()
                .withDecoration(BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/defaultpfp.png'))))
                .size(200, 200)
                .color(Colors.green)
                .makeCentered()
          ],
        ),
      ),
    );
  }
}
