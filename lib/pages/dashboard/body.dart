import 'package:dino/components/pannel.dart';
import 'package:dino/pages/dashboard/build.dart';
import 'package:flutter/material.dart';

import 'header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(children: <Widget>[
        Pannel(title: "Progress overview", children: Overview()),
        // Overview(),

        Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                //true 滑动到底部
                reverse: false,
                physics: BouncingScrollPhysics(),
                child: Column(
              children: [
                PannelV1(
                    title: "Running",
                    children:Build()),
                PannelV1(
                    title: "Waiting",
                    children:Build()),
              ],
            )),)
      ]),
    );
  }
}
