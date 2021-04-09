import 'package:flutter/widgets.dart';

class UIIcon extends StatelessWidget {
  String icon="";
  UIIcon(String icon, {Key key}) : super(key: key){
    this.icon=icon;
  }
  @override
  Widget build(BuildContext context) {
    return Text(icon,style: TextStyle(fontFamily: "Line",color: Color(0xff778ca2),fontSize: 18));
  }
}