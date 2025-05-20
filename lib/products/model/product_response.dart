import 'package:freezed_annotation/freezed_annotation.dart';

import '../../categories/model/category_response.dart';
import '../../core/util/image_utils.dart';

part 'product_response.freezed.dart';

part 'product_response.g.dart';

@freezed
abstract class ProductResponse with _$ProductResponse {
  const ProductResponse._();

  const factory ProductResponse({
    int? id,
    String? title,
    String? description,
    int? price,
    CategoryResponse? category,
    List<String>? images,
  }) = _ProductResponse;

  get featuredImage => ImageUtils.parseImageUrl(images?.firstOrNull);

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
