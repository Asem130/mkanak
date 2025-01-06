import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/core/themes/text_styles.dart';

class AppTextFormFeild extends StatelessWidget {
  const AppTextFormFeild({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintTextStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.cursorColor,
    this.controller,
    required this.validator,
  });
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final Color? backgroundColor;
  final TextStyle? hintTextStyle;
  final String hintText;
  final Color? cursorColor;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: cursorColor ?? ColorsManager.primaryAccent,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? ColorsManager.lightBeige,
        isDense: true,
        filled: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 14.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide:
                   BorderSide(color: ColorsManager.primaryAccent, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: ColorsManager.error, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide:
                   BorderSide(color: ColorsManager.lightGrey, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: ColorsManager.error, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle: hintTextStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
