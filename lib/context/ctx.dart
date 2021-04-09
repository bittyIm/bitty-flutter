import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class LoginInfo extends HiveObject {

  @HiveField(0)
  bool isLogin;

  @HiveField(1)
  String username;

  @HiveField(2)
  String email;
}