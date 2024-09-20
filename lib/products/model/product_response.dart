import 'package:json/json.dart';

import '../../categories/model/category_response.dart';
import '../../core/util/image_utils.dart';

@JsonCodable()
class ProductResponse {
  int? id;
  String? title;
  String? description;
  int? price;
  CategoryResponse? category;
  List<String>? images;

  get featuredImage => ImageUtils.parseImageUrl(images?.firstOrNull);
}
