import 'package:appointment_doctor_app/core/networking/api_error_handelr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specialization_resonse_model.dart';

part  'home_state.freezed.dart';


@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(SpecializationResponseModel specializationResponseModel) = SpecializationSuccess;
  const factory HomeState.specializationError(ErrorHandler error) = SpecializationError;
}
