import 'package:dino/components/fontIcon.dart';
import 'package:dino/components/pannel.dart';
import 'package:dino/pages/build/Step.dart';
import 'package:dino/pages/project/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'overView.dart';

class BuildDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BuildDetail();
  }
}

class _BuildDetail extends State<BuildDetail>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  int _currentIndex = 0;

  var _tabTitle = ['Status', 'Playbook'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Color(0xffe8ecef),
                    width: 1,
                    style: BorderStyle.solid)),
          )),
          backgroundColor: Color(0xcccccc),
          elevation: 0,
          leading: Builder(
            builder: (ctx) => IconButton(
              icon: UIIcon(""),
              onPressed: () => {Navigator.pop(context)},
            ),
          ),
          title: Text(
            "Build#190",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          actions: [
            IconButton(
              icon: UIIcon(""),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ProjectDetail();
                }))
              },
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(children: <Widget>[
            Pannel(title: "Build overview", children: BuildOverview()),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xffe8ecef),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Color(0xffe8ecef),
                  border: Border.all(
                      color: Color(0xffe8ecef),
                      width: 2,
                      style: BorderStyle.solid),
                ),
                controller: _tabController,
                tabs: [
                  Tab(icon: Text("STATUS")),
                  Tab(icon: Text("PLAYBOOK")),
                ],
              ),
            ),
            Expanded(child: Container(child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      //true 滑动到底部
                      reverse: false,
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          BuildStep(name:"第四步"),
                          BuildStep(name:"第三步"),
                          BuildStep(name:"第二步"),
                          BuildStep(name:"第一步"),

                        ],
                      ))
                  ,Text("22")],))
            )
          ]),
        ));
  }
}
