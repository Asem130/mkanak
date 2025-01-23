import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
import 'package:mkanak/features/hotel/ui/widgets/hotel_facilities_item.dart';

class HotelFacilitiesListView extends StatelessWidget {
  const HotelFacilitiesListView({super.key, required this.hotelsDocuments});
  final HotelsData? hotelsDocuments;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotelsDocuments!
            .facalitis!.facalitisArrayValue!.hotelFacalitisList!.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 12.w, left: 12.w),
          child: HotelFacilitiesItem(
            hotelFacalitisData: hotelsDocuments!.facalitis!.facalitisArrayValue!
                .hotelFacalitisList![index].mapValue!.hotelFacalitisData!,
          ),
        ),
      ),
    );
  }
}
