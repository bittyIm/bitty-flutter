import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Contact> {
  var _eventBus = new EventBus();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.more_vert_sharp),
          ),
        ],
        title: Text("联系人"),
      ),
    );
  }
}
