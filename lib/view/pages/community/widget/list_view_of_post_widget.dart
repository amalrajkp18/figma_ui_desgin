import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/utils/app_size.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/utils/white_space.dart';

class ListViewOfPostWidget extends StatelessWidget {
  const ListViewOfPostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<dynamic, dynamic>> postList = [
      {
        "porfilePicPath": 'assets/images/img_jane.png',
        "title": 'Jane Cooper has published a new article!',
        "subtitle": 'Today | 09:24 AM',
        "trailingImagePath": 'assets/images/img_jane_trailing.png',
      },
      {
        "porfilePicPath": 'assets/images/img_rachel.png',
        "title": 'Rochel has commented on your article!',
        "subtitle": '1 day ago | 14:43 PM',
        "trailingImagePath": 'assets/images/img_rachel._trailing.png',
      },
      {
        "porfilePicPath": 'assets/images/img_brad.png',
        "title": 'Brad Wigington liked your comment!',
        "subtitle": '1 day ago | 09:29 PM',
        "trailingImagePath": 'assets/images/img_brad_trailing.png',
      },
      {
        "porfilePicPath": 'assets/images/img_tyra.png',
        "title": 'Tyra Ballentine has published a new article!',
        "subtitle": '2 days ago | 10:29 AM',
        "trailingImagePath": 'assets/images/img_tyra_trailing.png',
      },
      {
        "porfilePicPath": 'assets/images/img_marci.jpg',
        "title": 'Marci Winkles has published a new article!',
        "subtitle": '3 days ago | 16:52 PM',
        "trailingImagePath": 'assets/images/img_marci_trailing.png',
      },
      {
        "porfilePicPath": 'assets/images/img_aileen.png',
        "title": 'Aileen has commented on your article!',
        "subtitle": '1 day ago | 09:29 PM',
        "trailingImagePath": 'assets/images/img_aileen_trailing.png',
      },
    ];
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.58,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) => PostTileWidget(
          index: index,
          porfilePicPath: postList[index]["porfilePicPath"],
          title: postList[index]["title"],
          subtitle: postList[index]["subtitle"],
          trailingImagePath: postList[index]["trailingImagePath"],
        ),
        separatorBuilder: (BuildContext context, int index) =>
            WhiteSpace.spacer(context: context, height: 24),
        itemCount: postList.length,
      ),
    );
  }
}

// post tile section

class PostTileWidget extends StatelessWidget {
  const PostTileWidget({
    super.key,
    required this.porfilePicPath,
    required this.title,
    required this.subtitle,
    required this.trailingImagePath,
    required this.index,
  });
  final String porfilePicPath;
  final String title;
  final String subtitle;
  final String trailingImagePath;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width(108),
      height: context.height(86),
      child: Row(
        children: [
          // profile section
          Stack(
            children: [
              CircleAvatar(
                radius: context.width(24),
                backgroundImage: AssetImage(porfilePicPath),
              ),
              index < 3
                  ? Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: context.width(6),
                        backgroundImage: const AssetImage(
                          'assets/images/img_online.png',
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          // text section
          Padding(
            padding: EdgeInsets.only(
              left: context.width(16),
              right: context.width(12),
            ),
            child: SizedBox(
              width: context.width(198),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.urbanist(
                      fontSize: context.width(18),
                      fontWeight: FontWeight.w600,
                      color: AppColor.mainText,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.urbanist(
                      fontSize: context.width(14),
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffe0e0e0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // trailing image
          Image.asset(
            trailingImagePath,
            width: context.width(72),
            fit: BoxFit.cover,
          ),
          // icon button
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              size: context.width(24),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
