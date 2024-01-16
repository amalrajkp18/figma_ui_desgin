import 'package:flutter/material.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';

class FormTextWidget extends StatelessWidget {
  const FormTextWidget({
    super.key,
    required this.text,
    this.color,
    this.fontSize = 14,
  });
  final String text;
  final Color? color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: context.height(
          context.width(fontSize),
        ),
        color: color ?? AppColor.formText,
      ),
    );
  }
}
