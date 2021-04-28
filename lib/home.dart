import 'package:bitty/recent_contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contact.dart';
import 'widget/CircleTabIndicator.dart';

class Home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Home> with SingleTickerProviderStateMixin {
  var _tabcontroller = null;

  @override
  void initState() {
    _tabcontroller = new TabController(length: 2, vsync: this);
    _tabcontroller.addListener(() {
      print("更新");
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [RecentContact(), Contact()],
          ),
          bottomNavigationBar: TabBar(
            indicator: CircleTabIndicator(color: Color(0xFF573851), radius: 3),
            tabs: [
              Tab(
                text: "最近",
              ),
              Tab(text: "联系人"),
            ],
          ),
        ));
  }
}
