import 'package:flutter/material.dart';

class UserDrawer extends StatefulWidget {
  @override
  _UserDrawerState createState() => _UserDrawerState();
}

class _UserDrawerState extends State<UserDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        ListTile(leading: CircleAvatar(),title: Text("Andrew Jones"),),
        ListTile(
          leading: Icon(Icons.edit),
          title: Text('New Direct Message'),
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: Text('New Group'),
        ),
        ListTile(
          onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, "/select_user");
          },
          leading:  const Icon(Icons.exit_to_app),
          title: const Text('Sign up'),
        ),
      ]),
    );
  }

}
