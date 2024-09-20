import 'package:json/json.dart';

@JsonCodable()
class CategoryResponse {
  int? id;
  String? name;
  String? image;
}
