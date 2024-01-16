import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';
import 'package:ui_retry/core/utils/white_space.dart';
import 'package:ui_retry/view/pages/libary/screen_lesson_plan.dart';
import 'package:ui_retry/view/widgets/app_bar_widget.dart';
import 'package:ui_retry/view/widgets/app_scaffold_widget.dart';

import 'widget/libary_tile.dart';

class ScreenLibary extends StatefulWidget {
  const ScreenLibary({super.key});

  @override
  State<ScreenLibary> createState() => _ScreenLibaryState();
}

class _ScreenLibaryState extends State<ScreenLibary> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      body: clicked
          ? const ScreenLessonPlan()
          : Column(
              children: [
                // appbar
                const AppBarWidget(),
                // text desc
                Padding(
                  padding: EdgeInsets.only(
                    top: context.height(27),
                    left: context.width(98),
                    right: context.width(52),
                  ),
                  child: Text(
                    'Life Skills - Understanding Yourself - 1 (Hinglish)',
                    style: GoogleFonts.mulish(
                      fontSize: context.width(20),
                      fontWeight: FontWeight.w900,
                      color: AppColor.mainText,
                    ),
                  ),
                ),
                WhiteSpace.spacer(context: context, height: 41),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width(41),
                    ),
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        onTap: () {
                          setState(() {
                            clicked = !clicked;
                          });
                        },
                        borderRadius: BorderRadius.circular(
                          context.width(10),
                        ),
                        child: LibaryTile(
                          index: index + 1,
                        ),
                      ),
                      separatorBuilder: (BuildContext context, int index) =>
                          WhiteSpace.spacer(
                        context: context,
                        height: 21,
                      ),
                      itemCount: 5,
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
