import 'package:bitty/device.dart';
import 'package:bitty/group.dart';
import 'package:bitty/recent_contact.dart';
import 'package:bitty/user_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contact.dart';

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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            elevation: 0,
            bottom: PreferredSize(
                child: Container(
                  color: Color.fromRGBO(216, 216, 216, 1),
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(4.0)),
            leading: IconButton(
              onPressed: _openDrawer,
              icon: CircleAvatar(),
            ),
            centerTitle: true,
            title: Text("Bitty"),
            actions: [
              IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
          drawer: UserDrawer(),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [RecentContact(), Contact(), Group(), Device()],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(text: "常用"),
              Tab(text: "联系人"),
              Tab(text: "分组"),
              Tab(text: "设备"),
            ],
          ),
        ));
  }
}
