import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:shimmer/shimmer.dart';

class PopularHotelsShimmperLoading extends StatelessWidget {
  const PopularHotelsShimmperLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                height: 120.h,
                width: 120.w,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Shimmer.fromColors(
                        baseColor: ColorsManager.primaryAccent.withValues(
                          alpha: 0.1,
                        ),
                        highlightColor: Colors.white,
                        child: Container(
                          height: 12.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: ColorsManager.primaryAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      verticalSpace(4),
                      Shimmer.fromColors(
                        baseColor: ColorsManager.primaryAccent.withValues(
                          alpha: 0.1,
                        ),
                        highlightColor: Colors.white,
                        child: Container(
                          height: 12.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: ColorsManager.primaryAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      verticalSpace(4),
                      Shimmer.fromColors(
                        baseColor: ColorsManager.primaryAccent.withValues(
                          alpha: 0.1,
                        ),
                        highlightColor: Colors.white,
                        child: Container(
                          height: 10.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: ColorsManager.primaryAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      verticalSpace(4),
                      Row(
                        children: [
                          Shimmer.fromColors(
                            baseColor: ColorsManager.primaryAccent.withValues(
                              alpha: 0.1,
                            ),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 10.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: ColorsManager.primaryAccent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        itemCount: 8,
      ),
    );
  }
}
