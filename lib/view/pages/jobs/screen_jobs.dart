import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';
import 'package:ui_retry/core/utils/white_space.dart';
import 'package:ui_retry/view/widgets/app_scaffold_widget.dart';

import '../../widgets/app_bar_widget.dart';
import '../../widgets/sub_head_text.dart';
import 'widget/list_view_of_jobs.dart';

class ScreenJobs extends StatelessWidget {
  const ScreenJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // appbar
          const AppBarWidget(),
          // space
          WhiteSpace.spacer(context: context, height: 29),
          //  content section
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.width(35),
            ),
            // ignore: prefer_const_constructors
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // text section
                Padding(
                  padding: EdgeInsets.only(
                    left: context.width(13),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SubHeadingText(title: 'Welcome to Jobs!'),
                      Text(
                        "Find the best job for you!",
                        style: GoogleFonts.mulish(
                          fontSize: context.width(10),
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffc1c1c1),
                        ),
                      )
                    ],
                  ),
                ),
                //space
                WhiteSpace.spacer(context: context, height: 55),
                // tab bar
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TabBarText(text: "All Jobs"),
                    TabBarText(text: "Interested Jobs"),
                    TabBarText(text: "Deleted Jobs"),
                  ],
                ),
                // space
                WhiteSpace.spacer(context: context, height: 46),
                // filter
                Row(
                  children: [
                    // icon filter
                    Image.asset('assets/icons/ic_filter search_.png'),
                    // Space
                    WhiteSpace.spacer(context: context, width: 8),
                    Text(
                      'Filters',
                      style: GoogleFonts.mulish(
                        fontSize: context.width(15),
                        fontWeight: FontWeight.w700,
                        color: AppColor.mainText,
                      ),
                    )
                  ],
                ),
                // space
                WhiteSpace.spacer(context: context, height: 35),
                Text(
                  'All Job listings',
                  style: GoogleFonts.mulish(
                    fontSize: context.width(15),
                    fontWeight: FontWeight.w700,
                    color: AppColor.mainText,
                  ),
                ),
                // space
                WhiteSpace.spacer(context: context, height: 42),
                // Listview of jobs
                const ListVIewOfJobs(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TabBarText extends StatelessWidget {
  const TabBarText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        fontSize: context.width(14),
        fontWeight: FontWeight.w700,
        color: AppColor.mainText,
      ),
    );
  }
}
