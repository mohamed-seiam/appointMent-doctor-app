import 'package:appointment_doctor_app/core/theming/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscuredText;
  final Widget? suffixIcon;
  final Color? backGroundColor;

  const AppTextFormField(
      {Key? key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.hintStyle,
      required this.hintText,
      this.isObscuredText,
      this.suffixIcon,
      this.backGroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: ColorManager.mainBlue,
                  width: 1.3,
                ),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: ColorManager.lighterGrey,
                  width: 1.3,
                ),
              ),
          hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: backGroundColor ?? ColorManager.moreLightGrey),
      obscureText: isObscuredText ?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
