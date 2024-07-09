import 'package:appointment_doctor_app/core/networking/api_error_handelr.dart';
import 'package:appointment_doctor_app/features/home/data/apis/home_api_services.dart';
import 'package:appointment_doctor_app/features/home/data/models/specialization_resonse_model.dart';

import '../../../../core/networking/api_result.dart';

class HomeRepo {
  final HomeApiServices _homeApiServices;
  HomeRepo(this._homeApiServices);
  Future<ApiResult<SpecializationResponseModel>> getSpecialization () async {
    try {
      final response = await _homeApiServices.getSpecialization();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}