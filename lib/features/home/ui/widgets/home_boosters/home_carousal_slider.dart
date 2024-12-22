import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/core/widgets/crousal_slider.dart';
import 'package:mkanak/features/home/data/models/boosters/home_booster_model.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({super.key, this.documentsList});
  final List<HomeBoostersDocuments?>? documentsList;
  @override
  Widget build(BuildContext context) {
    return CustomCrouserSlider(
        secondes: 10,
        scrollDirection: Axis.vertical,
        enlargeFactor: 0.3,
        viewportFraction: 1,
        items: documentsList?.map((i) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      i?.boostersData?.image?.stringValue ?? '',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                      decoration: BoxDecoration(
                        color: ColorsManager.black.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: Text(
                        i?.boostersData?.title?.stringValue ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorsManager.lightBeige,
                              fontFamily: 'Poppins',
                              fontSize: 16.sp,
                            ),
                      ),
                    ),
                  ),
                ],
              );
            }).toList() ??
            []);
  }
}

      // scrollDirection: Axis.vertical,
      // enlargeFactor: 0.3,
      // viewportFraction: 1);