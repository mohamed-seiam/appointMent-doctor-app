import 'package:appointment_doctor_app/core/helper/spacing.dart';
import 'package:appointment_doctor_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:appointment_doctor_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscuredText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpacing(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpacing(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      verticalSpacing(18),
                      AppTextFormField(
                        hintText: 'PassWord',
                        isObscuredText: isObscuredText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscuredText = !isObscuredText;
                            });
                          },
                          child: Icon(isObscuredText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      verticalSpacing(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpacing(40),
                      AppTextButton(
                        onPressed: () {},
                        textStyle: TextStyles.font16WhiteSemiBold,
                        buttonText: 'Login',
                      ),
                      verticalSpacing(16),
                      const TermsAndConditionsText(),
                      verticalSpacing(60),
                      const AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
