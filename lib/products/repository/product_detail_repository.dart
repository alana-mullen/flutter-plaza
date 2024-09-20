import 'package:flutter/foundation.dart';
import 'package:plaza/products/model/product_response.dart';

import '../../core/data/api_response_helper.dart';
import '../../core/data/rest_client.dart';
import '../../core/data/rest_service.dart';

class ProductDetailRepository {
  static Future<ProductResponse?> getProductDetail(int productId) async {
    try {
      RestService client = restClient.getService<RestService>();
      final response = await client.getProductDetail(productId);

      return await ApiResponseHelper.returnResponse(response);
    } catch (ex, stacktrace) {
      debugPrint('ProductDetailRepository Exception: $ex');
      debugPrint('ProductDetailRepository Stacktrace: $stacktrace');
      rethrow;
    }
  }
}
