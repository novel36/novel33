import 'package:json_annotation/json_annotation.dart';

part 'education.g.dart';

@JsonSerializable()
class Education {
  int id;
  String schoolName;
  String level_of_school;
  String started_year;
  String finished_year;

  Education(this.id, this.schoolName, this.level_of_school, this.started_year,
      this.finished_year);
  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
  Map<String, dynamic> toJson() => _$EducationToJson(this);
}
