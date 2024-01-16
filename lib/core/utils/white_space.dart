import 'package:flutter/material.dart';
import 'package:ui_retry/core/utils/app_size.dart';

class WhiteSpace {
  static Widget spacer(
      {required BuildContext context, double height = 0, double width = 0}) {
    return SizedBox(
      height: context.height(height),
      width: context.width(width),
    );
  }
}
