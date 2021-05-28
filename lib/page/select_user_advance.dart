import 'package:bitty/recent_contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../contact.dart';

class SelectUserAdvance extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<SelectUserAdvance> with SingleTickerProviderStateMixin {
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
    return  Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
                child: Container(
                  color: Color.fromRGBO(216, 216, 216, 1),
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(4.0)),

              elevation:0,
              centerTitle: true,
              title: Text("用户登录"),
              leading: IconButton(
              onPressed: ()=>{Navigator.pop(context)},
              icon: Icon(Icons.arrow_back_rounded))),
          body:Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Center(child:Column(children: [
            Expanded(
          child:Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: '用户名',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '密码',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            )])),
            Expanded(
                flex: 0,
                child: Center(child: Column(children: [
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                    style:ElevatedButton.styleFrom(

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100)))
                    ),
                      onPressed: (){},
                      child: Text("登录"))),
                  Text("版本:0.0.1")
            ],)),)
          ],),),)

        );
  }
}
