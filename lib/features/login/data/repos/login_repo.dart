import 'package:appointment_doctor_app/core/networking/api_error_handelr.dart';
import 'package:appointment_doctor_app/core/networking/api_services.dart';
import 'package:appointment_doctor_app/features/login/data/models/login_request_body.dart';
import 'package:appointment_doctor_app/features/login/data/models/login_response.dart';

import '../../../../core/networking/api_result.dart';

class LoginRepo {
  final ApiServices _apiServices;

  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
