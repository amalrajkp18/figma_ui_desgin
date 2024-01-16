import 'package:flutter/material.dart';
import 'package:ui_retry/core/utils/app_size.dart';

class BackgroundSection extends StatelessWidget {
  const BackgroundSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(385),
      height: context.height(602),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(
          context.width(10),
        ),
      ),
    );
  }
}
