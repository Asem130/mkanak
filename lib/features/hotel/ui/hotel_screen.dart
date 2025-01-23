import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/core/widgets/liner_separetor.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
import 'package:mkanak/features/hotel/ui/widgets/facalitis_continer.dart';
import 'package:mkanak/features/hotel/ui/widgets/fully_refundble.dart';
import 'package:mkanak/features/hotel/ui/widgets/hotel_facilities_list_view.dart';
import 'package:mkanak/features/hotel/ui/widgets/hotel_sliver_app_bar.dart';
import 'package:mkanak/features/hotel/ui/widgets/property_location.dart';
import 'package:mkanak/features/hotel/ui/widgets/reserve_now_pay_later.dart';

import 'widgets/kitchen_continer.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({
    super.key,
    required this.hotelsData,
  });
  final HotelsData hotelsData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.lightBeige,
        body: CustomScrollView(
          slivers: [
            HotelSliverAppBar(hotelData: hotelsData),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                child: Text(hotelsData.name!.stringValue ?? "Defualt Name",
                    style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            // SliverToBoxAdapter(child: verticalSpace(5)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                child: Text(
                    hotelsData.description!.stringValue ?? "Defualt Name",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: const Color.fromARGB(255, 112, 112, 112),
                        fontWeight: FontWeight.w500)),
              ),
            ),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  children: [
                    FullyRefundble(),
                    Spacer(),
                    ReserveNowPayLater(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        splashFactory:
                            InkRipple.splashFactory, // Apply splash effect
                        overlayColor: Colors.blue, // Set splash color
                        backgroundColor: ColorsManager.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Vist kitchen',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: verticalSpace(15)),
            SliverToBoxAdapter(
              child: HotelFacilitiesListView(
                hotelsDocuments: hotelsData,
              ),
            ),
            SliverToBoxAdapter(child: LinerSeparetor()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(
              child: PropertyLocation(
                hotelData: hotelsData,
              ),
            ),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: LinerSeparetor()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(
              child: FacalitisContiner(
                hotelsData: hotelsData,
              ),
            ),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: LinerSeparetor()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(
              child: KitchenContiner(),
            ),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: LinerSeparetor()),
            SliverToBoxAdapter(child: verticalSpace(10)),
          ],
        ),
      ),
    );
  }
}
