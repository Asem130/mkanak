import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mkanak/features/home/ui/widgets/discover_hotelsi_item.dart';

class DiscoverListView extends StatelessWidget {
  const DiscoverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {},
              child: DiscoverHotelsItem(),
            ),
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}
