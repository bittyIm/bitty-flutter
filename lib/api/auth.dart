import 'package:dino/api/request.dart';

class Auth {
  /// 登录
  static login(var ctx) {
    return Request.Post("/login", ctx);
  }

  /// 退出登录
  static logout(var ctx) {
    return Request.Get("/logout", ctx);
  }

  /// 注册
  static reg(var ctx) {
    return Request.Post("/signup", ctx);
  }
}
