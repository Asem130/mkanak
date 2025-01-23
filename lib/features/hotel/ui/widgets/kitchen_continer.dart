import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';

class KitchenContiner extends StatelessWidget {
  const KitchenContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Restaurant',
            style: TextStyle(
                fontSize: 18.sp,
                color: ColorsManager.black,
                fontWeight: FontWeight.w500),
          ),
          verticalSpace(10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              height: 180.h,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              'https://plus.unsplash.com/premium_photo-1661883237884-263e8de8869b?q=80&w=2089&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
          verticalSpace(10),
          Text(
              'We are dedicated to offering fresh, high-quality dishes inspired by both local and international flavors. Our goal is to provide a memorable dining experience with exceptional food, friendly service, and a welcoming atmosphere.'),
          verticalSpace(20),
          Row(
            children: [
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  splashFactory: InkRipple.splashFactory, // Apply splash effect
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
        ],
      ),
    );
  }
}
