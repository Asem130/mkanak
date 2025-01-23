import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';

class PropertyLocation extends StatelessWidget {
  const PropertyLocation({super.key, required this.hotelData});
  final HotelsData hotelData;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Property Location",
            style: TextStyle(
                fontSize: 18.sp,
                color: ColorsManager.black,
                fontWeight: FontWeight.w500),
          ),
          verticalSpace(10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/maps.png',
              fit: BoxFit.fill,
              height: 140.h,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          verticalSpace(10),
          Row(
            children: [
              Text(
                "${hotelData.cityName!.stringValue},",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: ColorsManager.black,
                    fontWeight: FontWeight.w500),
              ),
              horizontalSpace(5),
              Text(
                hotelData.address!.stringValue ?? "Defualt address",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: ColorsManager.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
