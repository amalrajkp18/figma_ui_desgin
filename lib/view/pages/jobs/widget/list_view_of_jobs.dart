import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_retry/core/utils/app_size.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/utils/white_space.dart';

class ListVIewOfJobs extends StatelessWidget {
  const ListVIewOfJobs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<dynamic, dynamic>> jobInfoList = [
      {
        "title": 'Senior Product Designer',
        "subtitle": 'Twitter',
        "place": 'Pune',
        "logoIconImage": 'assets/icons/ic_twitter.png',
      },
      {
        "title": 'Senior Product Designer',
        "subtitle": 'Spotify',
        "place": 'Pune',
        "logoIconImage": 'assets/icons/ic_spotify.png',
      },
      {
        "title": 'Senior Product Designer',
        "subtitle": 'Netflix',
        "place": 'Mumbai',
        "logoIconImage": 'assets/icons/ic_netflix.png',
      }
    ];
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.45,
      padding: EdgeInsets.symmetric(
        horizontal: context.width(8),
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => JobListTile(
          title: jobInfoList[index]["title"],
          subtitle: jobInfoList[index]["subtitle"],
          place: jobInfoList[index]["place"],
          logoIconImage: jobInfoList[index]["logoIconImage"],
        ),
        separatorBuilder: (BuildContext context, int index) =>
            WhiteSpace.spacer(
          context: context,
          height: 25,
        ),
        itemCount: jobInfoList.length,
      ),
    );
  }
}

class JobListTile extends StatelessWidget {
  const JobListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.place,
    required this.logoIconImage,
  });
  final String title;
  final String subtitle;
  final String place;
  final String logoIconImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: context.height(20),
        left: context.width(10),
        right: context.width(41),
      ),
      height: context.height(120),
      decoration: BoxDecoration(
        color: const Color(0xB40B1709),
        borderRadius: BorderRadius.circular(
          context.width(8),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // logo
              CircleAvatar(
                radius: context.width(18),
                backgroundImage: AssetImage(logoIconImage),
                backgroundColor: Colors.white,
              ),
              // space
              WhiteSpace.spacer(context: context, width: 18),
              // info text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: context.width(16),
                      color: AppColor.mainText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // desc
                  Text(
                    subtitle,
                    style: GoogleFonts.inter(
                      fontSize: context.width(12),
                      color: AppColor.mainText,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ],
          ),
          // space
          WhiteSpace.spacer(context: context, height: 18),
          // bottom text
          Padding(
            padding: EdgeInsets.only(
              left: context.width(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  place,
                  style: GoogleFonts.inter(
                    fontSize: context.width(14),
                    fontWeight: FontWeight.w500,
                    color: AppColor.mainText,
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
            ),
          )
        ],
      ),
    );
  }
}
