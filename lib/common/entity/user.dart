// 用户登录请求
import 'package:flutter/foundation.dart';

// class UserLoginRequestEntity {
//   UserLoginRequestEntity({
//     @required this.email,
//     @required this.password,
//   });

//   String email;
//   String password;

//   factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
//       UserLoginRequestEntity(
//         email: json["email"],
//         password: json["password"],
//       );

//   Map<String, dynamic> toJson() => {
//         "email": email,
//         "password": password,
//       };
// }

// 用户登录响应
// class UserLoginResponseEntity {
//   UserLoginResponseEntity({
//     @required this.accessToken,
//     this.displayName,
//     this.channes,
//   });

//   String accessToken;
//   String displayName;
//   List<String> channes;

//   factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
//       UserLoginResponseEntity(
//         accessToken: json["access_token"],
//         displayName: json["display_name"],
//         channes: List<String>.from(json["channes"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "access_token": accessToken,
//         "display_name": displayName,
//         "channes": List<dynamic>.from(channes.map((x) => x)),
//       };
// }

// 登录请求
class UserLoginRequestEntity {
  final String email;
  final String password;

  UserLoginRequestEntity({
    @required this.email,
    @required this.password,
  });

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

// 登录返回
class UserLoginResponseEntity {
  String accessToken;
  String displayName;
  List<String> channels;

  UserLoginResponseEntity({
    @required this.accessToken,
    this.displayName,
    this.channels,
  });

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        accessToken: json["access_token"],
        displayName: json["display_name"],
        channels: List<String>.from(json["channels"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "display_name": displayName,
        "channels": List<dynamic>.from(channels.map((x) => x)),
      };
}
