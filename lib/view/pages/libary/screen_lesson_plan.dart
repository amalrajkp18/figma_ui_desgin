import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';
import 'package:ui_retry/core/utils/white_space.dart';
import 'package:ui_retry/view/widgets/app_bar_widget.dart';

class ScreenLessonPlan extends StatelessWidget {
  const ScreenLessonPlan({super.key});
  static const routeName = '/screenlessonplan';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarWidget(
          toptext: false,
        ),
        // space
        WhiteSpace.spacer(context: context, height: 58),
        // content
        Container(
          width: context.width(341),
          height: context.height(652),
          padding: EdgeInsets.only(
            top: context.height(74),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              context.width(20),
            ),
            color: const Color(0xFF121601),
          ),
          child: Column(
            children: [
              const LessonTextWidget(
                data: 'Lession Plan',
              ),
              // space
              WhiteSpace.spacer(context: context, height: 34),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.width(72),
                ),
                child: const LessonTextWidget(
                  data: 'Understanding Yourself - 1 10 activities',
                ),
              ),
              WhiteSpace.spacer(context: context, height: 80),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.width(42),
                ),
                child: const LessonTextWidget(
                  data: 'Facilitator Manual - Understanding Yourself 1',
                ),
              ),
              WhiteSpace.spacer(context: context, height: 13),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.width(42),
                ),
                child: const LessonTextWidget(
                  data: 'Facilitator Manual - Understanding Yourself 1',
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class LessonTextWidget extends StatelessWidget {
  const LessonTextWidget({
    super.key,
    required this.data,
  });

  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: GoogleFonts.mulish(
        color: AppColor.mainText,
        fontSize: context.width(14),
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
