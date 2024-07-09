import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specialization_resonse_model.dart';

part  'home_state.freezed.dart';


@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = _SpecializationLoading;
  const factory HomeState.specializationSuccess(SpecializationResponseModel specializationResponseModel) = _SpecializationSuccess;
  const factory HomeState.specializationError(String message) = _SpecializationError;
}
