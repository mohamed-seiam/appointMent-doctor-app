
import 'package:appointment_doctor_app/core/theming/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32.sp,
    color: ColorManager.mainBlue,
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 13.sp,
    color: ColorManager.gray,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: Colors.white,
  );
}