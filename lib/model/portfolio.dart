import 'package:json_annotation/json_annotation.dart';

part 'portfolio.g.dart';

@JsonSerializable()
class Portfolio {
  int id;
  String project_title;
  String project_type;
  String project_images;
  String project_link;

  Portfolio(this.id, this.project_title, this.project_type, this.project_images,
      this.project_link);
  factory Portfolio.fromJson(Map<String, dynamic> json) =>
      _$PortfolioFromJson(json);
  Map<String, dynamic> toJson() => _$PortfolioToJson(this);
}
