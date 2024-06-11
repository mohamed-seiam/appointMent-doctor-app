import 'package:appointment_doctor_app/core/networking/api_error_handelr.dart';
import 'package:appointment_doctor_app/core/networking/api_services.dart';
import 'package:appointment_doctor_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:appointment_doctor_app/features/signup/data/models/sign_up_response.dart';

import '../../../../core/networking/api_result.dart';

class SignUpRepo {
  final ApiServices _apiServices;
  SignUpRepo(this._apiServices);
  Future<ApiResult<SignUpResponse>> signUp(SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiServices.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}