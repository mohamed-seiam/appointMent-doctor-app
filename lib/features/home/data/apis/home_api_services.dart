import 'package:appointment_doctor_app/features/home/data/apis/home_api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constance.dart';
import '../models/specialization_resonse_model.dart';
part 'home_api_services.g.dart';
@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio) = _HomeApiServices;
  @GET(HomeApiConstants.specializations)
  Future<SpecializationResponseModel> getSpecialization();
}
