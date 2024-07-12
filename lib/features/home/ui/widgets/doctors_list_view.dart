import 'package:appointment_doctor_app/features/home/ui/widgets/doctors_list_view_item.dart';
import 'package:flutter/material.dart';
import '../../data/models/specialization_resonse_model.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, required this.doctorsList});
  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length ?? 0,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            doctor: doctorsList![index]!,
          );
        },
      ),
    );
  }
}
