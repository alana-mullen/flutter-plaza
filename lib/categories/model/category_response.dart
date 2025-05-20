import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response.freezed.dart';

part 'category_response.g.dart';

@freezed
abstract class CategoryResponse with _$CategoryResponse {
  const CategoryResponse._();

  const factory CategoryResponse({int? id, String? name, String? image}) =
      _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
