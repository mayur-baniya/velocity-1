// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity/screens/mainpages/NavBar.dart';
import 'package:velocity/screens/mainpages/Search.dart';
import 'package:velocity/screens/mainpages/profile.dart';
import 'package:velocity/screens/test.dart';
import 'package:velocity/statemanager/states_store.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ThemeController themeController = Get.put(ThemeController());

  late PageController _pageController;
  int _currentIndex = 1;

  final List<Widget> _pages = <Widget>[
    SearchScreen(),
    Test(),
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (_pageController != null) {
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.decelerate);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        centerTitle: true,
        title: "Velocity".text.make(),
        actions: [
          Icon(Icons.favorite_outline).marginOnly(right: 20),
        ],
      ),
      drawer: myDrawer(context, themeController),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
            ),
          ],
          color: Colors.transparent,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onTabTapped,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    activeIcon: Icon(Icons.search_sharp),
                    label: "SEARCH"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    activeIcon: Icon(
                      Icons.home,
                    ),
                    label: "HOME"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person_alt_circle),
                    activeIcon: Icon(CupertinoIcons.person_alt_circle_fill),
                    label: "Profile"),
              ]),
        ).paddingOnly(bottom: 30, top: 5, right: 60, left: 60),
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
    );
  }
}
