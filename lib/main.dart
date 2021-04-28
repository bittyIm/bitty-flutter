import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(DinotApp());
}

class DinotApp extends StatelessWidget {
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
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("111"));
  }
}
