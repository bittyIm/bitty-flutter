import 'package:bitty/recent_contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../contact.dart';

class SelectUser extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<SelectUser> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 250,
              padding: EdgeInsets.fromLTRB(0, 80, 0, 80),
              child: Center(
                child: Column(
                  children: [
                    Text("欢迎使用Bitty", style: TextStyle(fontSize: 30)),
                    Text(
                      "选择登录用户",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("会飞的蛤蟆"),
                    trailing: Icon(Icons.arrow_right_alt),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("卖火柴的小姑娘"),
                    trailing: Icon(Icons.arrow_right_alt),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, "/select_user_advance");
                    },
                    leading: CircleAvatar(),
                    title: Text("新建账户登录"),
                    trailing: Icon(Icons.arrow_right_alt),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 0,
                child: Container(
                    child: Text("版本:0.0.1")
                )),
          ],
        ),
      ),
    );
  }
}
