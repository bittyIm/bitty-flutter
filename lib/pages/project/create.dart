import 'package:dino/components/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProjectCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Expanded(
            child: Center(
                child: Image(image: AssetImage('images/empty.png'))),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: TextRegular(content: "抱歉你没有权限创建"),
          )
        ],
      ),
    ));
  }
}
