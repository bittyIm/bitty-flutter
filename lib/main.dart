import 'package:bitty/circle.dart';
import 'package:bitty/page/select_user.dart';
import 'package:bitty/page/select_user_advance.dart';
import 'package:bitty/user_drawer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'event/event.dart';
import 'event/user_event.dart';
import 'home.dart';

Future<void> main() async {
  runApp(BittyApp());
}

class BittyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bitty',
      theme: ThemeData(primaryColor: Color(0xffffffff), primarySwatch: Colors.blue),
      routes: {
        "/":(ctx)=>BittyHomePage(),
        "/select_user":(ctx)=>SelectUser(),
        "/select_user_advance":(ctx)=>SelectUserAdvance()
      },
    );
  }
}

class BittyHomePage extends StatefulWidget {
  @override
  _BittyHomePageState createState() => _BittyHomePageState();
}

class _BittyHomePageState extends State<BittyHomePage> with SingleTickerProviderStateMixin {
  var _pageController = new PageController(initialPage: 0);
  @override
  void initState() {
    eventBus.on<UserEvent>().listen((event) {
      _pageController.jumpToPage(0);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      children: [ Home(), Circle()],
    ));
  }
}
