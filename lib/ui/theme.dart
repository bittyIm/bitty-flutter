import 'package:flutter/material.dart';

class themeDefault {
  static var Primary = Color(0xff4d7cfe);
  static var secondary = Color(0xff98A9BC);
  static var outline = Color(0xff98A9BC);
  static var background = Color(0xffF2F4F6);
}

class DinotTheme {
  static var backgroud = themeDefault.Primary;
  static var text = Colors.white;
}

class btn_primary extends DinotTheme {
  static var backgroud = themeDefault.Primary;
  static var textColor = Colors.white;
}

class btn_secondary extends DinotTheme {
  static var backgroud = themeDefault.secondary;
  static var textColor = Colors.white;
}
