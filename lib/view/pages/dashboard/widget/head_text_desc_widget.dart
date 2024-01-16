import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/utils/app_size.dart';

import '../../../../core/utils/white_space.dart';

class HeaderTextWDescWidget extends StatelessWidget {
  const HeaderTextWDescWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.iconBlured = false,
  });
  final String title;
  final String subTitle;
  final bool iconBlured;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main text
            Text(
              title,
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w900,
                fontSize: context.width(16),
                color: const Color(0xff92ee66),
              ),
            ),
            // space
            WhiteSpace.spacer(context: context, height: 9),
            // sub text
            Text(
              subTitle,
              style: GoogleFonts.mulish(
                fontSize: context.width(10),
                fontWeight: FontWeight.w500,
                color: const Color(0xffbbbbbb),
              ),
            )
          ],
        ),
        const Spacer(),
        iconBlured
            ? Image.asset(
                'assets/icons/ic_arrow_right_blur.png',
                width: context.width(30),
                fit: BoxFit.cover,
              )
            : Image.asset(
                'assets/icons/ic_arrow_right.png',
                width: context.width(30),
                fit: BoxFit.cover,
              ),
      ],
    );
  }
}
