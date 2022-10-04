import 'package:json_annotation/json_annotation.dart';

part 'personal_skill.g.dart';

@JsonSerializable()
class PersonalSkill {
  int id;
  String skillname;
  String skill_in_percent;

  PersonalSkill(this.id, this.skillname, this.skill_in_percent);
  factory PersonalSkill.fromJson(Map<String, dynamic> json) =>
      _$PersonalSkillFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalSkillToJson(this);
}
