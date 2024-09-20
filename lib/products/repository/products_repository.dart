import 'package:flutter/foundation.dart';
import 'package:plaza/products/model/product_response.dart';

import '../../core/data/api_response_helper.dart';
import '../../core/data/rest_client.dart';
import '../../core/data/rest_service.dart';

class ProductsRepository {
  static Future<List<ProductResponse>> getProducts() async {
    try {
      RestService client = restClient.getService<RestService>();
      final response = await client.getProducts();

      return await ApiResponseHelper.returnResponse(response);
    } catch (ex, stacktrace) {
      debugPrint('Exception: $ex');
      debugPrint('Stacktrace: $stacktrace');
      rethrow;
    }
  }
}
