
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:velocity/themes/colors.dart';

commonIndicator({double ?marginVerticle, double ?marginHorizontal}) {
  return SpinKitThreeBounce(
    size: 20,
    color: primaryColor,
  ).marginSymmetric(
    vertical: marginVerticle ?? 20,
    horizontal: marginHorizontal ?? 0,
  );
}
