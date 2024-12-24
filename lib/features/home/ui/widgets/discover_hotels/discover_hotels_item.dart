import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';

class DiscoverHotelsItem extends StatelessWidget {
  const DiscoverHotelsItem({
    super.key,
    required this.hotelModel,
  });
  final HotelsData? hotelModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      width: 120.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                width: 120.w,
                height: 110.h,
                hotelModel?.profileImage?.stringValue ?? "default image",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            hotelModel?.name?.stringValue ?? "Default Hotel",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 18, color: ColorsManager.black),
          ),
        ],
      ),
    );
  }
}
