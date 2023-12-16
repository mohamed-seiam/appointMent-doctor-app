import 'package:appointment_doctor_app/core/helper/app_regex.dart';
import 'package:appointment_doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment_doctor_app/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassWord extends StatefulWidget {
  const EmailAndPassWord({super.key});

  @override
  State<EmailAndPassWord> createState() => _EmailAndPassWordState();
}

class _EmailAndPassWordState extends State<EmailAndPassWord> {
  bool hasLoweCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool isObscuredText = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    setUpPasswordControllerListener();
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  void setUpPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLoweCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpacing(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'PassWord',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid passWord';
              }
            },
            isObscuredText: isObscuredText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscuredText = !isObscuredText;
                });
              },
              child: Icon(
                  isObscuredText ? Icons.visibility_off : Icons.visibility),
            ),
          ),
          verticalSpacing(24),
          PasswordValidation(
            hasLowerCase: hasLoweCase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasUpperCase: hasUpperCase,
          ),
        ],
      ),
    );
  }
}
