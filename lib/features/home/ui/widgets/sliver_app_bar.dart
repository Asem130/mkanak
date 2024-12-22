import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/ui/widgets/home_search.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 150.h,
      pinned: true,
      stretch: false,
      backgroundColor: ColorsManager.white,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1.2,
        background: Padding(
          padding: EdgeInsets.only(bottom: 30.h),
          child: SvgPicture.asset(
            'assets/svg/logogsaddsad.svg',
            width: 100
            ,
            height: 100,
          ),
        ),
        centerTitle: true,
        title: const HomeSearch(),
      ),
    );
  }
}
