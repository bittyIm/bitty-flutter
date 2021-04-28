import 'package:flutter/material.dart';

import 'event/event.dart';
import 'event/user_event.dart';

class RecentContact extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<RecentContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            eventBus.fire(UserEvent());
          },
          icon: Icon(Icons.circle),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.more_vert_sharp),
          ),
        ],
        elevation: 0,
        title: Text("最近"),
      ),
    );
  }
}
