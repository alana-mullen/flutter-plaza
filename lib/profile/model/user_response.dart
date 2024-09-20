import 'package:json/json.dart';

@JsonCodable()
class UserResponse {
  int? id;
  String? email;
  String? password;
  String? name;
  String? role;
  String? avatar;
}
