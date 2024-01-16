import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/utils/app_size.dart';

import '../../core/color/app_color.dart';

class SubHeadingText extends StatelessWidget {
  const SubHeadingText({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.mulish(
        fontSize: context.width(22),
        fontWeight: FontWeight.w900,
        color: AppColor.mainText,
      ),
    );
  }
}
