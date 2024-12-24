import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/logic/home_cubit.dart';
import 'package:mkanak/features/home/ui/widgets/discover_hotels/discover_hotels_bloc_builder.dart';
import 'package:mkanak/features/home/ui/widgets/discover_row.dart';
import 'package:mkanak/features/home/ui/widgets/home_boosters/home_carousal_slider_bloc_builder.dart';
import 'package:mkanak/features/home/ui/widgets/popular_hotels/most_popular_row.dart';
import 'package:mkanak/features/home/ui/widgets/popular_hotels/popular_hotels_bloc_builder.dart';
import 'package:mkanak/features/home/ui/widgets/sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 12.w, right: 18.w, bottom: 0.h),
          child: CustomScrollView(slivers: [
            HomeSliverAppBar(),
            SliverToBoxAdapter(child: verticalSpace(10)),
            HomeCarousalSliderBlocBuilder(),
            SliverToBoxAdapter(child: verticalSpace(10)),
            MostPopularRow(),
            SliverToBoxAdapter(child: verticalSpace(10)),
            PopularHotelsBlocBuilder(),
            SliverToBoxAdapter(child: verticalSpace(10)),
            DiscoverRow(),
            SliverToBoxAdapter(child: verticalSpace(10)),
            DiscoverHotelsBlocBuilder(),
          ]),
        ),
      ),
    );
  }
}
