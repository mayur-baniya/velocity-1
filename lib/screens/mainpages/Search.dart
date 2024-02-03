import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity/themes/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VxBox(
            child: Icon(Icons.search, size: 200, color: secondaryColor(context),)
          )
              
              .size(200, 200)
              .makeCentered()
        ],
      )
  );
}
}