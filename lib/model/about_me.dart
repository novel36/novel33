import 'package:json_annotation/json_annotation.dart';

part 'about_me.g.dart';

@JsonSerializable()
class Aboutme {
  int id;
  String name;
  String description;
  String photo1;
  String photo2;
  List socialmedialinks;
  List myskills;
  Aboutme(this.id, this.name, this.description, this.photo1, this.photo2,
      this.socialmedialinks, this.myskills);
  factory Aboutme.fromJson(Map<String, dynamic> json) =>
      _$AboutmeFromJson(json);
  Map<String, dynamic> toJson() => _$AboutmeToJson(this);
}
