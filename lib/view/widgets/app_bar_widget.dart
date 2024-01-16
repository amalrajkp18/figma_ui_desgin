import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/utils/app_size.dart';

import '../../core/utils/white_space.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    this.toptext = true,
  });
  final bool toptext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.width(41),
        right: context.width(24),
        top: context.width(17),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: context.width(33.5),
            backgroundImage: const AssetImage('assets/images/img_profile.png'),
          ),
          WhiteSpace.spacer(
            context: context,
            width: context.width(15),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              toptext
                  ? Text(
                      'Tesla Roadster',
                      style: GoogleFonts.mulish(
                        fontSize: context.width(16),
                        fontWeight: FontWeight.w600,
                        color: const Color(0xB1FFFFFF),
                      ),
                    )
                  : const Text(''),
              Text(
                'Elina Krohnke',
                style: GoogleFonts.spaceGrotesk(
                  fontSize: context.width(24),
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffebebeb),
                ),
              )
            ],
          ),
          const Spacer(),
          ClipRect(
            child: Image(
              width: context.width(60),
              image: const AssetImage('assets/icons/ic_settings.png'),
            ),
          )
        ],
      ),
    );
  }
}
