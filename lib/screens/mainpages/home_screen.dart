// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:velocity/common/components/NavBar.dart';
import 'package:velocity/screens/mainpages/Search.dart';
import 'package:velocity/screens/mainpages/favorite.dart';
import 'package:velocity/screens/mainpages/profile.dart';
import 'package:velocity/screens/test.dart';
import 'package:velocity/statemanager/states_store.dart';
import 'package:velocity/themes/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ThemeController themeController = Get.put(ThemeController());

  late PageController _pageController;
  int _currentIndex = 0;

  final List<Map> screenList = [
    {'icon': Icons.home_outlined, 'screen': Test(), 'label': 'Home'},
    {
      'icon': Icons.search_outlined,
      'screen': SearchScreen(),
      'label': 'Search'
    },
    {
      'icon': Icons.favorite_outline,
      'screen': FavoriteScreen(),
      'label': 'Favorite'
    },
    {
      'icon': Icons.person_outline,
      'screen': ProfileScreen(),
      'label': 'Profile'
    },
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

  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(context, themeController),
      appBar: AppBar(
        centerTitle: true,
        title: "Velocity".text.bold.make(),
        actions: [
          IconButton(
              icon: Icon(
                  MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? Icons.nightlight_round
                      : Icons.wb_sunny),
              onPressed: () {
                themeController.toggleTheme();
                print("modeeee : ${Get.theme.brightness}");
              })
          // Icon(Icons.favorite_outline).marginOnly(right: 20),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: screenList.map((item) {
          return (item['screen'] as Widget);
        }).toList(),
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        color: helperColor(context),
        itemColor: Vx.gray500,
        controller: _pageController,
        flat: true,
        useActiveColorByDefault: false,
        items: screenList.map((item) {
          return RollingBottomBarItem(
            item['icon'] as IconData,
            label: item['label'] as String,
            activeColor: primaryColor,
          );
        }).toList(),
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
