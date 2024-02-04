// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:velocity/screens/mainpages/NavBar.dart';
import 'package:velocity/screens/mainpages/Search.dart';
import 'package:velocity/screens/mainpages/profile.dart';
import 'package:velocity/screens/test.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomTest extends StatefulWidget {
  const BottomTest({Key? key}) : super(key: key);

  @override
  State<BottomTest> createState() => _BottomTestState();
}

class _BottomTestState extends State<BottomTest> {
  late PageController _pageController;
  int _currentIndex = 1;

  final List<Widget> _pages = <Widget>[
    SearchScreen(),
    Test(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: "Velocity".text.make(),
        actions: [
          Icon(Icons.favorite_outline).marginOnly(right: 20),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        color: helperColor(context),
        controller: _pageController,
        flat: true,
        useActiveColorByDefault: false,
        items: [
          RollingBottomBarItem(
            Icons.search_outlined,
            label: 'Search',
            activeColor: primaryColor,
          ),
          RollingBottomBarItem(
            Icons.home_outlined,
            label: 'Home',
            activeColor: primaryColor,
          ),
          RollingBottomBarItem(
            Icons.person,
            label: 'Person',
            activeColor: primaryColor,
          ),
        ],
        enableIconRotation: true,
        onTap: (index) {
          setState(() {
            _pageController.animateToPage(
              _currentIndex = index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut,
            );
          });
        },
      ),
    );
  }
}
