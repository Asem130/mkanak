import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/extensions.dart';
import 'package:mkanak/core/routes/routes.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
import 'package:mkanak/features/home/ui/widgets/popular_hotels/popular_hotel_item.dart';

class PopularHotelsListView extends StatelessWidget {
  const PopularHotelsListView({super.key, required this.documentsList});
  final List<HotelsDocuments?>? documentsList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.hotelScreen, arguments: documentsList);
            },
            child: PopularHotelItem(
              hotelData: documentsList?[index]?.hotelsData,
            ),
          ),
        ),
        itemCount: documentsList?.length,
      ),
    );
  }
}
