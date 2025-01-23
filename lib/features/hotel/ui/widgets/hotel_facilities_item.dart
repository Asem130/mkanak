import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';

class HotelFacilitiesItem extends StatelessWidget {
  const HotelFacilitiesItem({super.key, required this.hotelFacalitisData});
  final HotelFacalitisData hotelFacalitisData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20.w,
          backgroundColor: Colors.grey.withValues(alpha: 0.2),
          child: SvgPicture.network(
            color: const Color.fromARGB(255, 97, 97, 97),
            height: 25.h,
            hotelFacalitisData.image!.stringValue ?? 'Defualt Image',
            fit: BoxFit.fill,
          ),
        ),
        verticalSpace(5),
        Text(hotelFacalitisData.name!.stringValue ?? "Defualt Name",
            style: TextStyle(
                fontSize: 12,
                color: ColorsManager.black,
                fontWeight: FontWeight.w500))
      ],
    );
  }
}
