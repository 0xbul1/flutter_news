// 用户登录请求
import 'package:flutter/cupertino.dart';

class UserLoginRequestEntity {
  UserLoginRequestEntity({
    @required this.email,
    @required this.password,
  });

  String email;
  String password;

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginRequestEntity(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}

// 用户登录响应
class UserLoginResponseEntity {
  UserLoginResponseEntity({
    @required this.accessToken,
    this.displayName,
    this.channes,
  });

  String accessToken;
  String displayName;
  List<String> channes;

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        accessToken: json["access_token"],
        displayName: json["display_name"],
        channes: List<String>.from(json["channes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "display_name": displayName,
        "channes": List<dynamic>.from(channes.map((x) => x)),
      };
}
