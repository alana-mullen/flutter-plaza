import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';

part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse {
  const UserResponse._();

  const factory UserResponse({
    int? id,
    String? email,
    String? password,
    String? name,
    String? role,
    String? avatar,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
