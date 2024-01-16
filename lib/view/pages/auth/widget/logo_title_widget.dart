import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/utils/app_size.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/utils/white_space.dart';

class LogoTiltleWidget extends StatelessWidget {
  const LogoTiltleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // logo
        Container(
          width: context.width(85),
          height: context.height(48),
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/img_veteran_logo.jpg'),
            ),
            borderRadius: BorderRadius.circular(
              context.width(23),
            ),
          ),
        ),
        //width spacing
        WhiteSpace.spacer(context: context, width: 14),
        // title
        Text(
          'Vet-Guard',
          style: GoogleFonts.mulish(
            color: AppColor.mainText,
            fontSize: context.height(24),
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
