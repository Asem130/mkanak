import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';

class FacalitisContiner extends StatelessWidget {
  const FacalitisContiner({super.key, required this.hotelsData});
  final HotelsData hotelsData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Great for your stay',
            style: TextStyle(
                fontSize: 18.sp,
                color: ColorsManager.black,
                fontWeight: FontWeight.w500),
          ),
          verticalSpace(10),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: hotelsData
                .facalitis!.facalitisArrayValue!.hotelFacalitisList!.length,
            shrinkWrap: true,
            clipBehavior: Clip.hardEdge,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 6,
              crossAxisSpacing: 0,
              mainAxisSpacing: .5,
            ),
            itemBuilder: (context, index) => Row(
              children: [
                SvgPicture.network(
                  height: 25,
                  hotelsData
                      .facalitis!
                      .facalitisArrayValue!
                      .hotelFacalitisList![index]
                      .mapValue!
                      .hotelFacalitisData!
                      .image!
                      .stringValue!,
                ),
                horizontalSpace(5),
                Text(
                  hotelsData
                      .facalitis!
                      .facalitisArrayValue!
                      .hotelFacalitisList![index]
                      .mapValue!
                      .hotelFacalitisData!
                      .name!
                      .stringValue!,
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: ColorsManager.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 2),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(3), // Removes the border radius
              ),
            ),
            onPressed: () {},
            child: Text(
              'See all facilities',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
