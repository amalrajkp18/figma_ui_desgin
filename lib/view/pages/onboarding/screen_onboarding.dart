import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';
import 'package:ui_retry/core/utils/white_space.dart';
import 'package:ui_retry/view/pages/auth/screen_signin.dart';
import 'package:ui_retry/view/pages/onboarding/widget/image_scroll_widget.dart';
import 'package:ui_retry/view/widgets/app_scaffold_widget.dart';

import '../../widgets/app_button_widget.dart';

class ScreenOnboarding extends StatelessWidget {
  const ScreenOnboarding({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      body: Column(
        children: [
          // height spacing
          WhiteSpace.spacer(context: context, height: 60),
          // image section
          const ImageScrollWidget(),
          // height spacing
          WhiteSpace.spacer(context: context, height: 100),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.width(30),
            ),
            child: Column(
              children: [
                Text(
                  'Support veterans in their battle against suicide',
                  style: GoogleFonts.mulish(
                    color: AppColor.mainText,
                    fontSize: context.width(36),
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
                // height spacing
                WhiteSpace.spacer(context: context, height: 60),
                // button
                AppButtonWidget(
                  onpressed: () {
                    // navigation
                    Navigator.pushReplacementNamed(
                        context, ScreenSignIn.routeName);
                  },
                  text: 'GET STRATED',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
