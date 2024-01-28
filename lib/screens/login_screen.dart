import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: 'Velocity'.text.make(),
      ),
      body: VxBox(
          child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail_outline), hintText: "Enter Email"),
          ).marginSymmetric(vertical: 10),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: "Enter password"),
          ).marginSymmetric(vertical: 10),
          ElevatedButton(onPressed: () {}, child: "Login".text.make())
        ],
      )).make().p16().centered().expand(),
    );
  }
}
