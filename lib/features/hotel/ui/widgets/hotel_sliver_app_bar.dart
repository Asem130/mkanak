import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
import 'package:mkanak/features/hotel/ui/widgets/hotel_app_bar_carousal_slider.dart';

class HotelSliverAppBar extends StatelessWidget {
  const HotelSliverAppBar({super.key, required this.hotelData});
  final List<HotelsDocuments?>? hotelData;
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
            child: HotelAppBarCarousalSlider(
              documents: hotelData,
            )),
        centerTitle: true,
        // title: HotelAppBarCarousalSlider(
        //   documents: hotelData,
        // ),
      ),
    );
  }
}
