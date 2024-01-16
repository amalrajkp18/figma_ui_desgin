import 'package:flutter/material.dart';
import 'package:ui_retry/core/utils/app_size.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: context.height(173),
          left: -context.width(95),
          child: Container(
            width: context.width(869),
            height: context.height(867),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                context.width(429),
              ),
              gradient: RadialGradient(
                colors: [
                  const Color(0xFFFFE81E).withOpacity(0.04),
                  const Color(0x09FFE91E),
                ],
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
