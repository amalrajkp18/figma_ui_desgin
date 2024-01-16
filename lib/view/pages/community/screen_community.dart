import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';
import 'package:ui_retry/core/utils/white_space.dart';
import 'package:ui_retry/view/widgets/app_bar_widget.dart';
import 'package:ui_retry/view/widgets/app_scaffold_widget.dart';

import '../../widgets/sub_head_text.dart';
import 'widget/background_widget.dart';
import 'widget/list_view_of_post_widget.dart';

class ScreenCommunity extends StatelessWidget {
  const ScreenCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      body: BackgroundWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarWidget(),
            Padding(
              padding: EdgeInsets.only(
                left: context.width(45),
                right: context.width(39),
                top: context.height(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SubHeadingText(title: 'Welcome to your Community'),
                  // space
                  WhiteSpace.spacer(context: context, height: 13),
                  // textfield
                  Padding(
                    padding: EdgeInsets.only(
                      right: context.width(108),
                    ),
                    child: TextField(
                      cursorColor: const Color(0xFF464634),
                      decoration: InputDecoration(
                        fillColor: const Color(0xFF464634).withOpacity(0.3),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                          left: context.width(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(
                            context.width(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF464634),
                          ),
                          borderRadius: BorderRadius.circular(
                            context.width(10),
                          ),
                        ),
                        hintText: 'Type your question here...',
                        hintStyle: GoogleFonts.mulish(
                          fontSize: context.width(10),
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffa8a8a8),
                        ),
                        suffixIcon: Image.asset(
                          'assets/icons/ic_search.png',
                        ),
                      ),
                    ),
                  ),
                  // space
                  WhiteSpace.spacer(context: context, height: 13),
                  Text(
                    "All posts(37)",
                    style: GoogleFonts.mulish(
                      fontSize: context.width(15),
                      fontWeight: FontWeight.w400,
                      color: AppColor.mainText,
                    ),
                  ),
                  // space
                  WhiteSpace.spacer(context: context, height: 25),
                  // list of post
                  const ListViewOfPostWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
