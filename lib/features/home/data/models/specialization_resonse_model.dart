import 'package:json_annotation/json_annotation.dart';
part 'specialization_resonse_model.g.dart';
@JsonSerializable()
class SpecializationResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationData?>? specializationsDetails;
  SpecializationResponseModel({this.specializationsDetails});
  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;
  SpecializationData({this.id, this.name, this.doctorsList});
  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? gender;
  String? address;
  String? description;
  String? degree;
  @JsonKey(name: 'appoint_price')
  int ? price;
  Doctors(
      {this.id,
      this.name,
      this.email,
      this.gender,
      this.phone,
      this.address,
      this.description,
      this.price,
      this.degree});
  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
