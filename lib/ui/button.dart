import 'package:dino/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './theme.dart';

class button extends StatelessWidget {
  String title;
  DinotTheme theme;
  button({Key key, this.title, this.theme}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        color: DinotTheme.backgroud,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: DinotTheme.text),
              ),
            )));
  }
}
