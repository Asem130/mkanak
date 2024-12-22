import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mkanak/features/home/ui/widgets/home_search.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 150.h,
      pinned: true,
      stretch: false,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1.2,
        background: Padding(
          padding: EdgeInsets.only(bottom: 30.h),
          child: SvgPicture.asset(
            'assets/2qWvMIYzxfajbjjZGMx2Af9isE4.svg',
          ),
        ),
        centerTitle: true,
        title: const HomeSearch(),
      ),
    );
  }
}
