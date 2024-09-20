import 'package:flutter/foundation.dart';
import 'package:plaza/categories/model/category_response.dart';

import '../../core/data/api_response_helper.dart';
import '../../core/data/rest_client.dart';
import '../../core/data/rest_service.dart';

class CategoriesRepository {
  Future<List<CategoryResponse>> getCategories() async {
    try {
      RestService client = restClient.getService<RestService>();
      final response = await client.getCategories();

      return await ApiResponseHelper.returnResponse(response);
    } catch (ex, stacktrace) {
      debugPrint('Exception: $ex');
      debugPrint('Stacktrace: $stacktrace');
      rethrow;
    }
  }
}
