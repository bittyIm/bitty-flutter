import 'dart:io';

import 'package:flutter/material.dart';

class BuildItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: ()=>{
          Navigator.pushNamed(context, '/buildDetail')
    },child: Container(
      // margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color:Color(0xffe8ecef),width:1,style:BorderStyle.solid)),
        color: const Color(0xffffffff),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text("dinot server",style: TextStyle(fontSize: 18),),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Text("修改了一些东西增加了移动端接口\r\n最多两行的显示",style: TextStyle(fontSize: 12,color: Color(0xff778ca2)),),
          ),

          Row(
            children: [

              Expanded(
                  child:
                  Container(

                    child: Row(children: [
                      Text("",style: TextStyle(fontFamily: "Line",color: Color(0xff778ca2),fontSize: 18)),
                      Text("8/8",style: TextStyle(fontFamily: "Line",color: Color(0xff778ca2),fontSize: 14),),],),
                  )),
              Container(
                child: Row(children: [
                  Text("",style: TextStyle(fontFamily: "Line",color: Color(0xff778ca2),fontSize: 18)),
                  Text("10min ago",style: TextStyle(fontFamily: "Line",color: Color(0xff778ca2),fontSize: 14))
                ],),
              )
            ],
          )
          ,
          Row(
            children: [

            ],
          ),
        ],
      ),
    ),);
  }
}



class Build extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: <Widget>[
            BuildItem(),
            BuildItem(),
            BuildItem(),
            BuildItem(),
            BuildItem(),
            BuildItem(),
            BuildItem(),
            BuildItem(),
    ]),);
  }
}
