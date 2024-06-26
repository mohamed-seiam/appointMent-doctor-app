import 'package:appointment_doctor_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:appointment_doctor_app/features/signup/logic/sign_up_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repos/sign_up_repo.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
  TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupState.signupLoading());
    final response = await _signupRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(success: (signupResponse) {
      emit(SignupState.signupSuccess(signupResponse));
    }, failure: (error) {
      emit(SignupState.signupError(error: error.apiErrorModel.message ?? ''));
    });
  }
}