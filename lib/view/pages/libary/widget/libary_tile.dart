import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/utils/app_size.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/utils/white_space.dart';

class LibaryTile extends StatelessWidget {
  const LibaryTile({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(371),
      height: context.height(110),
      padding: EdgeInsets.only(
        top: context.height(13),
        left: context.width(36),
        right: context.width(26),
      ),
      decoration: BoxDecoration(
        color: const Color(0xff191b05),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            offset: Offset(1, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(
          context.width(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: context.width(240),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Facilitator Manual - Understanding Yourself ${index.toString()}',
                  style: GoogleFonts.mulish(
                    fontSize: context.width(14),
                    fontWeight: FontWeight.w400,
                    color: AppColor.mainText,
                  ),
                ),
                WhiteSpace.spacer(context: context, height: 9),
                Text(
                  'Status: Not Started',
                  style: GoogleFonts.mulish(
                    fontSize: context.width(9),
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8e8e8e),
                  ),
                ),
                Text(
                  'Duration:',
                  style: GoogleFonts.mulish(
                    fontSize: context.width(9),
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8e8e8e),
                  ),
                )
              ],
            ),
          ),
          Image.asset('assets/icons/ic_document download_.png')
        ],
      ),
    );
  }
}
