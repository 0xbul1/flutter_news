import 'package:flutter_news/pages/sign_in/sign_in.dart';
import 'package:flutter_news/pages/sign_up/sign_up.dart';
import 'package:flutter_news/pages/application/application.dart';

var staticRoutes = {
  '/sign_up': (context) => SignUpPage(), // 注册
  '/sign_in': (context) => SignInPage(), // 登录
  "/app": (context) => ApplicationPage(), // 主程序
};
