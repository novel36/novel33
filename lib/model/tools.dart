import 'package:json_annotation/json_annotation.dart';

part 'tools.g.dart';

@JsonSerializable()
class Tools {
  int id;
  String tool_name;
  String used_for;

  Tools(this.id, this.tool_name, this.used_for);
  factory Tools.fromJson(Map<String, dynamic> json) => _$ToolsFromJson(json);
  Map<String, dynamic> toJson() => _$ToolsToJson(this);
}
