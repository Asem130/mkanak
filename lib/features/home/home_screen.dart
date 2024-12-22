import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/ui/widgets/discover_listview.dart';
import 'package:mkanak/features/home/ui/widgets/discover_row.dart';
import 'package:mkanak/features/home/ui/widgets/home_carousal_slider.dart';
import 'package:mkanak/features/home/ui/widgets/popular_hotels/most_popular_row.dart';
import 'package:mkanak/features/home/ui/widgets/popular_hotels/popular_bloc_builder.dart';
import 'package:mkanak/features/home/ui/widgets/popular_hotels/popular_hotels_listview.dart';
import 'package:mkanak/features/home/ui/widgets/sliver_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CollectionReference hotels = FirebaseFirestore.instance.collection('Hotels');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightGrey,
      body: Padding(
        padding:
            EdgeInsets.only(left: 12.w, right: 12.w, top: 4.h, bottom: 0.h),
        child: CustomScrollView(slivers: [
          HomeSliverAppBar(),
          HomeCarouselSlider(),
          MostPopularRow(),
          SliverToBoxAdapter(child: verticalSpace(10)),
          SliverToBoxAdapter(child: PopularHotelsBlocBuilder()),
          SliverToBoxAdapter(child: verticalSpace(15)),
          DiscoverRow(),
          SliverToBoxAdapter(child: verticalSpace(15)),
          DiscoverListView(),
          SliverToBoxAdapter(child: verticalSpace(15)),
        ]),
      ),
    );
  }
}