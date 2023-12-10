import 'package:appointment_doctor_app/core/helper/extenstion.dart';
import 'package:appointment_doctor_app/core/routing/routes.dart';
import 'package:appointment_doctor_app/core/theming/color_manager.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          context.pushNamed(Routes.logInScreen);
        },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ))
      ),
        child: Text('Get Started',style: TextStyles.font16WhiteMedium,),
    );
  }
}
