import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctors_list_view.dart';
import 'doctors_speciality_list_view.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () {
            return setupLoading();
          },
          specializationSuccess: (specializationResponseModel) {
            var specializationList =
                specializationResponseModel.specializationsDetails;
            return setupSuccess(specializationList);
          },
          specializationError: (error) => const SizedBox.shrink(),
          orElse: () => setupError(),
        );
      },
    );
  }

  Widget setupLoading() {
    return SizedBox(
      height: 100.h,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setupSuccess(specializationList) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialityListView(
            specializationsData: specializationList ?? [],
          ),
          verticalSpacing(8),
          DoctorsListView(
            doctorsList: specializationList?[0]?.doctorsList ?? [],
          ),
        ],
      ),
    );
  }
}
