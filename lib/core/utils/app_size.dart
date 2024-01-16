import 'package:flutter/material.dart';

extension AppSize on BuildContext {
  double height(double height) {
    return MediaQuery.sizeOf(this).height * (height / 1004);
  }

  double width(double width) {
    return MediaQuery.sizeOf(this).width * (width / 467);
  }
}
