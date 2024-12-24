import 'package:flutter/material.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:shimmer/shimmer.dart';

class HomeCarousalSliderShimmer extends StatelessWidget {
  const HomeCarousalSliderShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.primaryAccent.withValues(
        alpha: 0.1,
      ),
      highlightColor: Colors.white,
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorsManager.warmOrange,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
