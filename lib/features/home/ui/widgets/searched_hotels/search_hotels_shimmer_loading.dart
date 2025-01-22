import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:shimmer/shimmer.dart';

class SearchHotelsShimmerLoading extends StatelessWidget {
  const SearchHotelsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Column(
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManager.primaryAccent.withValues(
                  alpha: 0.1,
                ),
                highlightColor: Colors.white,
                child: Container(
                  height: 75.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                  ),
                ),
              ),
              verticalSpace(10),
              Shimmer.fromColors(
                baseColor: ColorsManager.primaryAccent.withValues(
                  alpha: 0.1,
                ),
                highlightColor: Colors.white,
                child: Container(
                  height: 10.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                  ),
                ),
              ),
            ],
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
