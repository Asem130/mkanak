import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mkanak/core/themes/color_manger.dart';

class DiscoverHotelsItem extends StatelessWidget {
  const DiscoverHotelsItem({
    super.key,
  });

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
                'https://www.usatoday.com/gcdn/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            ' hotel.name',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 18, color: ColorsManager.primaryAccent),
          ),
        ],
      ),
    );
  }
}
