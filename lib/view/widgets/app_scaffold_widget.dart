import 'package:flutter/material.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';

class AppScaffoldWidget extends StatelessWidget {
  final Widget? bottomNavigationBar;
  final Widget body;
  const AppScaffoldWidget({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgScaffold,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
            ),
            Positioned(
              right: -context.width(314),
              child: Container(
                width: context.width(869),
                height: context.height(867),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      const Color(0xFFFFE81E).withOpacity(0.32),
                      const Color(0xFFFFE81E).withOpacity(0.0001),
                    ],
                  ),
                ),
              ),
            ),
            body,
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
