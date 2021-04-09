import 'package:dino/components/fontIcon.dart';
import 'package:dino/pages/dashboard/body.dart';
import 'package:dino/pages/project/create.dart';
import 'package:dino/pages/project/list.dart';
import 'package:dino/routes/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'components/typo.dart';
import 'pages/auth/login.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('context');
  runApp(DinotApp());
}

class DinotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dino',
      routes: route,
      theme: ThemeData(
          primaryColor: Color(0xffffffff), primarySwatch: Colors.blue),
      home: MyHomePage(title: '仪表盘'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final GlobalKey _scaffoldKey = new GlobalKey();
  TabController _tabController;
  var _tabTitle = ['Dashboard', 'Pipeline', "User", "Profile"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawerEnableOpenDragGesture: false,
        drawer: Drawer(
          child: ValueListenableBuilder(
            valueListenable: Hive.box('context').listenable(),
            builder: (context, box, wigget) {
              var isLogin = box.get("isLogin", defaultValue: false);
              var username = box.get("username", defaultValue: "未登录");
              var email = box.get("email", defaultValue: "未登录");
              return ListView(
                children: [
                  DrawerHeader(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: CircleAvatar(),
                            )
                          ],
                        ),
                        Row(
                          children: [TextRegular(content: username)],
                        ),
                        Row(
                          children: [TextLight(content: email)],
                        )
                      ],
                    ),
                  ),
                  isLogin
                      ? ListTile(
                          title: Text('退出'),
                          onTap: () {
                            box.delete("isLogin");
                            box.delete("username");
                            box.delete("email");
                          },
                        )
                      : ListTile(
                          title: Text('登录'),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return LoginScreen();
                            }));
                          },
                        ),
                  ListTile(
                    title: Text('设置'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          ),
        ),
        resizeToAvoidBottomPadding: true,
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
              icon: UIIcon(""),
              onPressed: () => {Scaffold.of(ctx).openDrawer()},
            ),
          ),
          title: Text(
            _tabTitle[_currentIndex],
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          actions: [
            IconButton(
              icon: UIIcon(""),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ProjectCreate();
                }))
              },
            )
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: [Body(), ProjectList(), ProjectList(), ProjectList()],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Color(0xffe8ecef),
                      width: 1,
                      style: BorderStyle.solid)),
              color: Colors.white),
          child: TabBar(
            indicator: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Colors.blue, width: 2, style: BorderStyle.solid)),
            ),
            controller: _tabController,
            tabs: [
              Tab(icon: UIIcon("")),
              Tab(
                  icon: UIIcon(
                "",
              )),
              Tab(icon: UIIcon("")),
              Tab(icon: UIIcon("")),
            ],
          ),
        ));
  }
}
