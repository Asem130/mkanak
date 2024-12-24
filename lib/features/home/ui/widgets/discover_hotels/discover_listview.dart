import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';

import 'package:mkanak/features/home/ui/widgets/discover_hotels/discover_hotels_item.dart';

class DiscoverListView extends StatelessWidget {
  const DiscoverListView({super.key, required this.documentsList});
  final List<HotelsDocuments?>? documentsList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: GestureDetector(
            onTap: () {},
            child: DiscoverHotelsItem(
              hotelModel: documentsList?[index]?.hotelsData,
            ),
          ),
        ),
        itemCount: documentsList?.length,
      ),
    );
  }
}
