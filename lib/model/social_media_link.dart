import 'package:json_annotation/json_annotation.dart';

part 'social_media_link.g.dart';

@JsonSerializable()
class SocialMediaLinks {
  int id;
  String skillname;
  String skill_in_percent;

  SocialMediaLinks(this.id, this.skillname, this.skill_in_percent);
  factory SocialMediaLinks.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaLinksFromJson(json);
  Map<String, dynamic> toJson() => _$SocialMediaLinksToJson(this);
}
