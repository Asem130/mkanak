import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/data/models/hotels/searched_hotels_response_model.dart';

class SearchedHotelItem extends StatelessWidget {
  const SearchedHotelItem({
    super.key,
    required this.hotelData,
  });
  final SearchedHotelsData? hotelData;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.lightBeige, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              hotelData?.profileImage?.stringValue ?? 'Default Image',
              width: 100.w,
              height: 80.h,
              fit: BoxFit.cover,
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
                  Text(
                    hotelData?.name?.stringValue ?? 'Hotel Name',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 18.sp, color: ColorsManager.black),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(2),
                  Text(
                    hotelData?.cityName?.stringValue ?? 'Location',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontSize: 12.sp,
                        color: ColorsManager.darkGray.withValues(alpha: 0.6)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(2),
                  Row(
                    children: [
                      Text(
                        hotelData?.rooms?.integerValue ?? '30',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontSize: 12.sp,
                                color: ColorsManager.darkGray
                                    .withValues(alpha: 0.6)),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      horizontalSpace(5),
                      Text(
                        'rooms',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color:
                                ColorsManager.darkGray.withValues(alpha: 0.4)),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  verticalSpace(2),
                  Row(
                    children: [
                      Text(
                        '${hotelData?.pricePerDay?.integerValue ?? '1800'}\$',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.green),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      horizontalSpace(5),
                      Text(
                        'per night',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color:
                                ColorsManager.darkGray.withValues(alpha: 0.4)),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
