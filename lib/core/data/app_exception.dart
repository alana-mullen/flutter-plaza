// ignore_for_file: avoid-dynamic

class AppException implements Exception {
  final dynamic _message;
  final dynamic _prefix;
  final dynamic data;

  const AppException([this._message, this._prefix, this.data]);

  @override
  String toString() => "$_prefix$_message";
}

class FetchDataException extends AppException {
  FetchDataException({String? message, dynamic data})
      : super(message, "Error During Communication: ", data);
}

// 400
class BadRequestException extends AppException {
  BadRequestException({String? message, dynamic data})
      : super(message, "Invalid Request: ", data);
}

// 401
class UnauthorisedException extends AppException {
  UnauthorisedException({String? message, dynamic data})
      : super(message, "Unauthorised: ", data);
}

// 404
class ResourceNotFoundException extends AppException {
  ResourceNotFoundException({String? message, dynamic data})
      : super(message, "Not found: ", data);
}

class InvalidInputException extends AppException {
  InvalidInputException({String? message, dynamic data})
      : super(message, "Invalid Input: ", data);
}

// 500
class InternalServerErrorException extends AppException {
  InternalServerErrorException({String? message, dynamic data})
      : super(message, "InternalServerError", data);
}

// 502
class BadGatewayException extends AppException {
  BadGatewayException({String? message, dynamic data})
      : super(message, "BadGatewayException: ", data);
}

class UnexpectedException extends AppException {
  UnexpectedException({String? message, dynamic data})
      : super(message, "Unexpected error occurred: ", data);
}
