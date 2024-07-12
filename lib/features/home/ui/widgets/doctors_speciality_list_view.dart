import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/specialization_resonse_model.dart';
import 'doctors_speciality_list_view_item.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationData?> specializationsData;
  const DoctorsSpecialityListView(
      {super.key, required this.specializationsData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsData.length,
        itemBuilder: (context, index) {
          return DoctorsSpecialityListViewItem(
            index: index,
            specializationsData: specializationsData[index]!,
          );
        },
      ),
    );
  }
}
