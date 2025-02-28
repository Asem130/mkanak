import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/extensions.dart';
import 'package:mkanak/core/routes/routes.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/ui/widgets/home_search_continer.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.white,
      shadowColor: Colors.white,
      clipBehavior: Clip.hardEdge,
      expandedHeight: 200.h,
      pinned: true,
      stretch: true,
      backgroundColor: ColorsManager.white,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.symmetric(vertical: 8.h),
        expandedTitleScale: 1.12,
        background: Padding(
          padding: EdgeInsets.only(bottom: 30.h),
          child: Image.asset(
            'assets/images/2.png',
          ),
        ),
        centerTitle: true,
        title: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.searchScreen);
            },
            child: const HomeSearchContiner()),
      ),
    );
  }
}
