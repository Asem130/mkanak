import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/logic/home_cubit.dart';

class HomeSearchTextFormField extends StatelessWidget {
  const HomeSearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        BlocProvider.of<HomeCubit>(context).searchForHotel(name: value);
      },
      controller: context.read<HomeCubit>().searchedHotelController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15),
        hintText: 'Search for hotels',
        hintStyle: TextStyle(
          color: ColorsManager.darkGray,
          fontSize: 14.sp,
        ),
        prefixIcon: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: ColorsManager.darkGray,
            size: 20,
          ),
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
