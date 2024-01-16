import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/utils/app_size.dart';

import '../../core/color/app_color.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key,
    required this.text,
    required this.onpressed,
  });
  final String text;
  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          MediaQuery.sizeOf(context).width,
          context.height(60),
        ),
        padding: EdgeInsets.zero,
        shadowColor: Colors.white38,
        elevation: 16,
        foregroundColor: Colors.white,
      ),
      onPressed: onpressed,
      child: Ink(
        width: MediaQuery.sizeOf(context).width,
        height: context.height(60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            context.width(48),
          ),
          image: const DecorationImage(
            image: AssetImage('assets/images/img_button_bg.png'),
            colorFilter: ColorFilter.mode(
              Color(0xEEFFF700),
              BlendMode.colorBurn,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.mulish(
              fontWeight: FontWeight.w900,
              color: AppColor.buttonText,
              fontSize: context.width(16),
              letterSpacing: 4,
            ),
          ),
        ),
      ),
    );
  }
}
