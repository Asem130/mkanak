import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/features/home/data/models/hotels_response_model.dart';
import 'package:mkanak/features/home/ui/widgets/popular_hotels/popular_hotel_item.dart';

class PopularHotelsListView extends StatelessWidget {
  const PopularHotelsListView({super.key, required this.documentsList});
  final List<Documents?>? documentsList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: PopularHotelItem(
            hotelData: documentsList?[index]?.hotelsData,
          ),
        ),
        itemCount: documentsList?.length,
      ),
    );
  }
}
