import 'package:dino/components/fontIcon.dart';
import 'package:dino/components/pannel.dart';
import 'package:dino/pages/build/Step.dart';
import 'package:dino/pages/project/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'OverView.dart';



class ProjectDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color:Color(0xffe8ecef),width:1,style:BorderStyle.solid)),
            )
        ),
        backgroundColor: Color(0xcccccc),
        elevation: 0,
        leading: Builder(
          builder: (ctx) => IconButton(
            icon: UIIcon(""),
            onPressed: () => {
              Navigator.pop(context)
            },
          ),
        ),
        title: Text("dinot server build",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w300),),
        actions: [
          IconButton(
            icon: UIIcon(""),
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
          IconButton(
            icon: UIIcon(""),
            onPressed: () => {
              Navigator.pop(context),
            },
          )
        ],
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(children: <Widget>[
          Pannel(title: "Project overview", children: ProjectOverview()),
          // Overview(),

          Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                //true 滑动到底部
                reverse: false,
                physics: BouncingScrollPhysics(),
                child: Column(children: [
                  Text("11")
                ],)
            ),)
        ]),
      ),
    );
  }
}