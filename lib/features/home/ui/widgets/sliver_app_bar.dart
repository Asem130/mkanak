import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/ui/widgets/home_search.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      clipBehavior: Clip.none,
      expandedHeight: 200.h,
      pinned: true,
      stretch: false,
      backgroundColor: ColorsManager.white,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.symmetric(vertical: 8.h),
        expandedTitleScale: 1.1,
        background: Padding(
          padding:  EdgeInsets.only(bottom: 40.0.h),
          child: Image.asset(
            'assets/images/2.png',
            width: 180,
            height:200,
          ),
        ),
        centerTitle: true,
        title: const HomeSearch(),
      ),
    );
  }
}
