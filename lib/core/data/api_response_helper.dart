import 'package:chopper/chopper.dart';

import 'app_exception.dart';

/// Return response body if response code is 200 or custom success code.
/// Return custom Exception for all error responses so it can be handled in a
/// try/catch.
class ApiResponseHelper {
  static Future<dynamic> returnResponse(
    Response response, {
    final int successCode = 200,
  }) async {
    if (response.statusCode == successCode) return response.body;

    String responseBody = response.error?.toString() ?? '';
    switch (response.statusCode) {
      case 400:
        throw BadRequestException(
          message: responseBody,
          data: responseBody,
        );

      case 401:
        throw UnauthorisedException(
          message: responseBody,
          data: responseBody,
        );

      case 404:
        throw ResourceNotFoundException(
          message: responseBody,
          data: responseBody,
        );

      case 500:
        throw InternalServerErrorException(
          message: responseBody,
          data: responseBody,
        );

      case 502:
        throw BadGatewayException(
          message: responseBody,
          data: responseBody,
        );

      default:
        throw UnexpectedException(
          message: responseBody,
          data: responseBody,
        );
    }
  }
}
