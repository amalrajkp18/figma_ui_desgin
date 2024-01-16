import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_retry/core/utils/app_size.dart';

import '../../../../core/color/app_color.dart';

class ImageScrollWidget extends StatefulWidget {
  const ImageScrollWidget({
    super.key,
  });

  @override
  State<ImageScrollWidget> createState() => _ImageScrollWidgetState();
}

class _ImageScrollWidgetState extends State<ImageScrollWidget> {
  int currentIndex = 0;

  PageController pageController = PageController();

  final List<Widget> onBoardingImage = [
    Image.asset(
      fit: BoxFit.cover,
      "assets/images/img_onboard_bg.jpeg",
    ),
    Image.asset(
      fit: BoxFit.cover,
      "assets/images/img_onboard_bg.jpeg",
    ),
    Image.asset(
      fit: BoxFit.cover,
      "assets/images/img_onboard_bg.jpeg",
    ),
    Image.asset(
      fit: BoxFit.cover,
      "assets/images/img_onboard_bg.jpeg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: context.height(416),
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.elliptical(
              context.width(100),
              context.height(30),
            ),
          ),
          child: SizedBox(
            height: context.height(416),
            child: PageView(
              controller: pageController,
              onPageChanged: (pageIndex) {
                setState(() {
                  currentIndex = pageIndex;
                });
              },
              children: onBoardingImage,
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 4,
            effect: SlideEffect(
              dotHeight: context.height(11),
              dotWidth: context.width(11),
              activeDotColor: AppColor.pageIndicatorActive,
              dotColor: AppColor.pageIndicatorDot,
            ),
          ),
        )
      ],
    );
  }
}
