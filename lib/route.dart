import 'package:bitty/page/user_sign_in.dart';

import 'main.dart';
import 'page/select_user.dart';
import 'page/select_user_advance.dart';

var route = {"/": (ctx) => BittyHomePage(), "/select_user": (ctx) => SelectUser(), "/select_user_advance": (ctx) => SelectUserAdvance(), "/user_sign_in": (ctx) => UserSignin()};
