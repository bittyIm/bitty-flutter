import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pannel extends StatelessWidget {
  String title = "Progress overview";
  Widget children;

  Pannel({Key key, this.title, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [Text(title,style: TextStyle(color: Color(0xff778ca2)),)],
      ),
      Container(
        alignment:Alignment.topLeft ,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(2),
          ),
          margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: children)
    ]);
  }
}

class PannelV1 extends StatelessWidget {
  String title = "Progress overview";
  Widget children;

  PannelV1({Key key, this.title, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [Text(title,style: TextStyle(color: Color(0xff778ca2)),)],
      ),
      Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: children)
    ]);
  }
}
