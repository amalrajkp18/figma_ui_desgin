import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';
import 'package:ui_retry/core/utils/white_space.dart';
import 'package:ui_retry/view/pages/dashboard/widget/background_section_widget.dart';
import 'package:ui_retry/view/widgets/app_scaffold_widget.dart';

import '../../widgets/app_bar_widget.dart';
import 'widget/head_text_desc_widget.dart';

class ScreenDashBoard extends StatelessWidget {
  const ScreenDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // app bar
          const AppBarWidget(),
          // spacer
          WhiteSpace.spacer(context: context, height: 28),
          //head text
          Padding(
            padding: EdgeInsets.only(
              left: context.width(72),
              bottom: context.height(41),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quest',
                  style: GoogleFonts.mulish(
                    fontSize: context.width(24),
                    fontWeight: FontWeight.w900,
                    color: AppColor.mainText,
                  ),
                ),
                // subtext
                Text(
                  'Find your latest activities here',
                  style: GoogleFonts.mulish(
                    fontSize: context.width(10),
                    fontWeight: FontWeight.w900,
                    color: AppColor.mainText,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Stack(
              children: [
                const BackgroundSection(),
                Container(
                  width: context.width(385),
                  height: context.height(220),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.width(33),
                    vertical: context.height(27),
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.decal,
                      colors: [
                        Color(0xff15150E),
                        Color(0xffFFFFFF),
                      ],
                    ),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                        context.width(10),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      const HeaderTextWDescWidget(
                        title: 'Library',
                        subTitle: 'Check out 37+ courses for you',
                      ),
                      // space
                      WhiteSpace.spacer(context: context, height: 33),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: context.width(210),
                            child: Text(
                              'Life Skills - Understanding Yourself - 1 (Hinglish)',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.mulish(
                                fontSize: context.width(14),
                                fontWeight: FontWeight.w900,
                                color: AppColor.mainText,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                context.width(81),
                                context.height(25),
                              ),
                              backgroundColor: const Color(0xff79D432),
                            ),
                            child: Text(
                              'strat',
                              style: GoogleFonts.mulish(
                                fontSize: context.width(10),
                                fontWeight: FontWeight.w800,
                                color: AppColor.mainText,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                // section 2
                Positioned(
                  top: context.height(209),
                  child: Container(
                    width: context.width(385),
                    height: context.height(220),
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width(33),
                      vertical: context.height(27),
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        tileMode: TileMode.decal,
                        colors: [
                          Color(0xff15150E),
                          Color(0xffFFFFFF),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(
                        context.width(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        const HeaderTextWDescWidget(
                          title: 'Community',
                          subTitle:
                              'Join 1+ conversations with your classmates',
                          iconBlured: true,
                        ),
                        // space
                        WhiteSpace.spacer(context: context, height: 17.5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // dp
                            CircleAvatar(
                              radius: context.width(24),
                              backgroundImage: const AssetImage(
                                'assets/images/img_marci.jpg',
                              ),
                            ),
                            WhiteSpace.spacer(context: context, width: 16),
                            // text
                            SizedBox(
                              width: context.width(190),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Marci Winkles has published a new article!',
                                    style: GoogleFonts.urbanist(
                                      fontSize: context.width(14),
                                      color: AppColor.mainText,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Today | 16:52 PM',
                                    style: GoogleFonts.urbanist(
                                      fontSize: context.width(13),
                                      color: const Color(0xffe0e0e0),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            WhiteSpace.spacer(context: context, width: 5),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                context.width(8),
                              ),
                              child: Image.asset(
                                'assets/images/img_bg_marci.jpg',
                                width: context.width(60),
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // section 3
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: context.width(385),
                    height: context.height(220),
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width(33),
                      vertical: context.height(27),
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        tileMode: TileMode.decal,
                        colors: [
                          Color(0xff15150E),
                          Color(0xffFFFFFF),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(
                        context.width(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        const HeaderTextWDescWidget(
                          title: 'Job',
                          subTitle: 'office Executive / Co-Ordinator',
                          iconBlured: true,
                        ),
                        // space
                        WhiteSpace.spacer(context: context, height: 17.5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // dp
                            CircleAvatar(
                              radius: context.width(24),
                              backgroundColor: Colors.white,
                              backgroundImage: const AssetImage(
                                'assets/icons/ic_twitter.png',
                              ),
                            ),
                            WhiteSpace.spacer(context: context, width: 18),
                            // text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Senior Product Designer',
                                  style: GoogleFonts.inter(
                                    fontSize: context.width(16),
                                    color: AppColor.mainText,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Twitter',
                                  style: GoogleFonts.inter(
                                    fontSize: context.width(12),
                                    color: const Color(0xffe0e0e0),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        WhiteSpace.spacer(context: context, height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: context.width(40),
                              height: context.height(20),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 79, 79, 79),
                                borderRadius: BorderRadius.circular(
                                  context.width(4),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Pune',
                                  style: GoogleFonts.inter(
                                    fontSize: context.width(12),
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffd4d4d4),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '•Part Time  •Hybrid',
                              style: GoogleFonts.inter(
                                fontSize: context.height(12),
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 248, 232, 232),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
