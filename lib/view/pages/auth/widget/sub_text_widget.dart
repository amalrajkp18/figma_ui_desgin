import 'package:flutter/material.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';

class SubTextWidget extends StatelessWidget {
  const SubTextWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: context.width(24),
        color: AppColor.mainText,
      ),
    );
  }
}
