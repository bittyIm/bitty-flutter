import 'package:dino/components/button.dart';
import 'package:dino/components/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'create.dart';

class ProjectEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
          Expanded(child:  Center(child: Image(image: AssetImage('images/empty.png'))),),
          Container( padding:EdgeInsets.fromLTRB(10, 20, 10, 20), child:
            TextRegular(content: "还没有项目? 来创建一个吧"),),
          Container( padding:EdgeInsets.fromLTRB(10, 10, 10, 120), child:
          PrimaryBtn(title: "New Project",onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return ProjectCreate();
            }));
          },)
          )
        ],),
    );
  }
}