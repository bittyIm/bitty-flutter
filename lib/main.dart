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
      home: BittyHomePage(title: '仪表盘'),
    );
  }
}

class BittyHomePage extends StatefulWidget {
  BittyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BittyHomePageState createState() => _BittyHomePageState();
}

class _BittyHomePageState extends State<BittyHomePage> with SingleTickerProviderStateMixin {
  var _pageController = new PageController(initialPage: 1);
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
      children: [Home()],
    ));
  }
}
