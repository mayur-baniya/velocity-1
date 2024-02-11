import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:velocity/themes/colors.dart';

commonIndicator(BuildContext context,
    {double? marginVerticle, double? marginHorizontal}) {
  return SpinKitThreeBounce(
    size: 20,
    color: secondaryColor(context),
  );
}
