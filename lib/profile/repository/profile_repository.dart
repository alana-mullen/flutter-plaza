import 'package:flutter/foundation.dart';
import 'package:plaza/profile/model/user_response.dart';

import '../../core/data/api_response_helper.dart';
import '../../core/data/rest_client.dart';
import '../../core/data/rest_service.dart';

class ProfileRepository {
  static Future<UserResponse> getProfile() async {
    try {
      RestService client = restClient.getService<RestService>();
      final response = await client.getUserDetail(1);

      return await ApiResponseHelper.returnResponse(response);
    } catch (ex, stacktrace) {
      debugPrint('ProfileRepository Exception: $ex');
      debugPrint('ProfileRepository Stacktrace: $stacktrace');
      rethrow;
    }
  }
}
