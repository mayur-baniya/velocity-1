// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/common/widgets/app_header_logo.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity/themes/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

const List<Map> cityListmap = <Map>[
  {'id': '1', 'name': 'Nagpur'},
  {'id': '2', 'name': 'Delhi'},
  {'id': '3', 'name': 'Banglore'},
  {'id': '4', 'name': 'Kolkata'},
];
const List<Map> genderList = <Map>[
  {'id': '1', 'value': 'Male'},
  {'id': '2', 'value': 'Female'},
  {'id': '3', 'value': 'Other'},
];

class SignUpScreenState extends State<SignUpScreen> {
  String city = '';
  String gender = '';
  bool isObscure1 = true;
  bool isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            (MediaQuery.of(context).platformBrightness == Brightness.light
                ? scaffoldLightColor
                : Colors.black),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                AppHeaderLogo(
                  subtitleText: "Let's create your Account",
                ).h16(context),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person), hintText: "eg: John Doe"),
                ).marginSymmetric(vertical: 5),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email), hintText: "Email Address"),
                ).marginSymmetric(vertical: 5),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone), hintText: "Phone Number"),
                ).marginSymmetric(vertical: 5),
                Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownMenu(
                        enableFilter: true,
                        requestFocusOnTap: true,
                        leadingIcon: Icon(Icons.location_on_outlined),
                        hintText: "City",
                        //expandedInsets: EdgeInsets.zero,
                        onSelected: (value) {
                          print("cityyyyyyyyyyy : " + value);
                          setState(() {
                            city = value!;
                          });
                        },
                        dropdownMenuEntries:
                            cityListmap.map<DropdownMenuEntry>((Map obj) {
                          return DropdownMenuEntry<String>(
                              value: obj['id'].toString(),
                              label: obj['name'].toString());
                        }).toList(),
                      ),
                      DropdownMenu(
                        leadingIcon: Icon(
                          gender == '1'
                              ? Icons.male_rounded
                              : gender == '2'
                                  ? Icons.female_rounded
                                  : Icons.transgender_sharp,
                        ),
                        hintText: "Gender",
                        //expandedInsets: EdgeInsets.zero,
                        onSelected: (value) {
                          print("valueeeeeeee: " + value);
                          setState(() {
                            gender = value!;
                          });
                        },
                        dropdownMenuEntries:
                            genderList.map<DropdownMenuEntry>((Map obj) {
                          return DropdownMenuEntry<String>(
                              value: obj['id'].toString(),
                              label: obj['value'].toString());
                        }).toList(),
                      )
                    ]).marginSymmetric(vertical: 5),
                TextFormField(
                  obscureText: isObscure1,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                          icon: Icon(
                            isObscure1
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscure1 = !isObscure1;
                            });
                          }),
                      prefixIcon: Icon(Icons.lock_outline)),
                ).marginSymmetric(vertical: 5),
                TextFormField(
                  obscureText: isObscure2,
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      suffixIcon: IconButton(
                          icon: Icon(
                            isObscure2
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscure2 = !isObscure2;
                            });
                          }),
                      prefixIcon: Icon(Icons.lock_outline)),
                ).marginSymmetric(vertical: 5),
                'By clicking on submit you will agree to our '
                    .text
                    .make()
                    .marginOnly(top: 5),
                TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => VxBox(
                                  child: Row(
                                children: [
                                  Column(
                                    children: [
                                      "Terms & Conditions!".text.xl4.make(),
                                      "This is our terms and conditions"
                                          .text
                                          .bold
                                          .make(),
                                    ],
                                  ).expand(),
                                ],
                              )).p20.make());
                    },
                    child: 'Terms & conditions'.text.bold.make()),
                ElevatedButton(onPressed: () {}, child: "Signup".text.make())
                    .marginSymmetric(vertical: 10),
                VxBox(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    "------ Or Continue With -----"
                        .text
                        .makeCentered()
                        .marginSymmetric(vertical: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            style: ButtonStyle(
                              fixedSize: MaterialStatePropertyAll(Size(
                                  MediaQuery.of(context).size.width / 3, 30)),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: 'Facebook'.text.white.lg.bold.make()),
                        TextButton(
                            style: ButtonStyle(
                              fixedSize: MaterialStatePropertyAll(Size(
                                  MediaQuery.of(context).size.width / 3, 30)),
                              // padding:MaterialStateProperty.all(
                              //     EdgeInsets.symmetric(
                              //         vertical: 10, horizontal: 25)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.redAccent),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: 'Google'.text.lg.bold.make()),
                      ],
                    ).marginSymmetric(vertical: 15),
                    InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          Get.to(() => SignUpScreen(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 500));
                        },
                        child: RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Already Registred? ',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: secondaryColor(context),
                                  fontWeight: FontWeight.bold,
                                  fontFamily:
                                      GoogleFonts.poppins().fontFamily)),
                          TextSpan(
                              text: 'Login Now!',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.poppins().fontFamily))
                        ]))).marginSymmetric(vertical: 15),
                  ],
                )).make(),
              ],
            ),
          ).marginSymmetric(horizontal: 20),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItems(String city) => DropdownMenuItem(
        value: city,
        child: Text(
          city,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      );
}
