import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity/themes/colors.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        VxBox(
            child: Icon(
          Icons.favorite_border,
          size: 200,
          color: secondaryColor(context),
        )).size(200, 200).makeCentered()
      ],
    ));
  }
}
