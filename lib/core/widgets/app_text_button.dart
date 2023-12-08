import 'package:appointment_doctor_app/core/theming/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backGroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const AppTextButton({Key? key,
    this.borderRadius,
    this.backGroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 16)
            ),),
          backgroundColor: MaterialStatePropertyAll(
            backGroundColor ?? ColorManager.mainBlue,
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 12.w,
              vertical: verticalPadding ?? 14.h,
            ),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 50.h,),),
      ),
      onPressed: onPressed,
      child: Text(buttonText,style: textStyle,),
    );
  }
}
