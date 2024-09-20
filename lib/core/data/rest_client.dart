import 'package:chopper/chopper.dart';
import 'package:plaza/core/data/rest_service.dart';
import 'package:plaza/products/model/product_response.dart';

import '../../categories/model/category_response.dart';
import '../../profile/model/user_response.dart';
import 'json_to_type_converter.dart';

final restClient = ChopperClient(
  baseUrl: Uri.tryParse('https://api.escuelajs.co/api/v1/'),
  interceptors: [],
  converter: JsonToTypeConverter(
    {
      ProductResponse: (json) => ProductResponse.fromJson(json),
      CategoryResponse: (json) => CategoryResponse.fromJson(json),
      UserResponse: (json) => UserResponse.fromJson(json),
    },
  ),
  errorConverter: const JsonConverter(),
  services: [RestService.create()],
);
