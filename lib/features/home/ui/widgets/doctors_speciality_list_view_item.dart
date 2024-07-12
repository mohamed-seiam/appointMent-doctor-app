import 'package:appointment_doctor_app/features/home/data/models/specialization_resonse_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/styles.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  const DoctorsSpecialityListViewItem(
      {super.key, required this.index, required this.specializationsData});
  final int index;
  final SpecializationData specializationsData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: index == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: ColorManager.lightBlue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpacing(8),
          Text(
            specializationsData.name ?? 'Speciality',
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
