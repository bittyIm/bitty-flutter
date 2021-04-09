import 'package:flutter/widgets.dart';

class BuildStep extends StatelessWidget {
  String name;
  BuildStep({Key key, String name}) : super(key: key){
    this.name=name;
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(name),);
  }
}