import 'package:flutter/material.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';
import 'package:ui_retry/view/pages/community/screen_community.dart';
import 'package:ui_retry/view/pages/dashboard/screen_dashboard.dart';
import 'package:ui_retry/view/pages/jobs/screen_jobs.dart';
import 'package:ui_retry/view/pages/libary/screen_libary.dart';
import 'package:ui_retry/view/widgets/app_scaffold_widget.dart';

import 'molten_navigationbar/molten_navigationbar.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  static const routeName = '/bottomnavigation';

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  // index
  int currentIndex = 0;
  final PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ScreenDashBoard(),
          ScreenLibary(),
          ScreenCommunity(),
          ScreenJobs(),
        ],
      ),
      bottomNavigationBar: MoltenBottomNavigationBar(
        selectedIndex: currentIndex,
        onTabChange: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
          pageController.animateToPage(
            newIndex,
            duration: const Duration(microseconds: 300),
            curve: Curves.linearToEaseOut,
          );
        },
        domeCircleSize: 70,
        domeCircleColor: Colors.transparent,
        barColor: AppColor.bgBottomNav,
        borderRaduis: BorderRadius.vertical(
          top: Radius.circular(
            context.width(20),
          ),
        ),
        tabs: [
          MoltenTab(
            icon: currentIndex == 0
                ? Image.asset("assets/icons/ic_dashboard_selected.png")
                : Image.asset(
                    "assets/icons/ic_dashboard.png",
                    scale: 1.2,
                  ),
          ),
          MoltenTab(
            icon: currentIndex == 1
                ? Image.asset("assets/icons/ic_library_selected.png")
                : Image.asset(
                    "assets/icons/ic_library.png",
                    scale: 1.2,
                  ),
          ),
          MoltenTab(
            icon: currentIndex == 2
                ? Image.asset("assets/icons/ic_community_selected.png")
                : Image.asset(
                    "assets/icons/ic_community.png",
                    scale: 1.2,
                  ),
          ),
          MoltenTab(
            icon: currentIndex == 3
                ? Image.asset("assets/icons/ic_jobs_selected.png")
                : Image.asset(
                    "assets/icons/ic_jobs.png",
                    scale: 1.2,
                  ),
          ),
        ],
      ),
    );
  }
}
