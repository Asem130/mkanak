import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mkanak/core/themes/color_manger.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        
        contentPadding: EdgeInsets.only(left: 10.w, top: 10.h),
        hintText: 'Search for hotels',
        hintStyle: TextStyle(
          color: ColorsManager.darkGray,
          fontSize: 14.sp,
        ),
        prefixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: ColorsManager.darkGray,
          size: 14.sp,
        ),
        filled: true,
        fillColor: ColorsManager.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: ColorsManager.gold, width: 3),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: ColorsManager.gold, width: 3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: ColorsManager.gold, width: 3),
        ),
      ),
    );
  }
}
