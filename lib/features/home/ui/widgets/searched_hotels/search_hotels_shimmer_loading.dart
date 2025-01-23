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
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount:5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManager.primaryAccent.withValues(
                  alpha: 0.1,
                ),
                highlightColor: Colors.white,
                child: Container(
                  height: 80.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                  ),
                ),
              ),
              SizedBox(
                  height: 80.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                    ),
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
                              height: 10.h,
                              width: MediaQuery.of(context).size.width * 0.5,
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
                              width: 150.w,
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
                              width: 100.w,
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
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: ColorsManager.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                              ),
                            ),
                          ),
                        ]),
                  ))
            ],
          ),
        );
      },
    );
  }
}
