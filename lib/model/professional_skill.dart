import 'package:json_annotation/json_annotation.dart';

part 'professional_skill.g.dart';

@JsonSerializable()
class ProfessionalSkill {
  int id;
  String skillname;
  String skill_in_percent;

  ProfessionalSkill(this.id, this.skillname, this.skill_in_percent);
  factory ProfessionalSkill.fromJson(Map<String, dynamic> json) =>
      _$ProfessionalSkillFromJson(json);
  Map<String, dynamic> toJson() => _$ProfessionalSkillToJson(this);
}
