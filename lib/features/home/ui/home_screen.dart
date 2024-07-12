import 'package:appointment_doctor_app/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:appointment_doctor_app/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:appointment_doctor_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:appointment_doctor_app/features/home/ui/widgets/specializations_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBarWidget(),
              const DoctorBlueContainer(),
              verticalSpacing(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpacing(18),
             const SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
