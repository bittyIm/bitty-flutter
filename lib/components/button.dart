import 'package:dino/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrimaryBtn extends StatelessWidget {
  String title;
  Function onTap;
  PrimaryBtn({Key key,this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return
        GestureDetector(child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(5),
          color: DinotTheme.backgroud,
          child: ClipRRect(
              borderRadius:
              BorderRadius.circular(10),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      color: DinotTheme.text)),
                ),
              )),onTap: onTap,);
  }

}


class SecondaryBtn extends StatelessWidget {
  String title;
  Function onTap;
  SecondaryBtn({Key key,this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child:Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        color: Color(0xffF8FAFB),
        child: ClipRRect(
            borderRadius:
            BorderRadius.circular(10),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff98A9BC)),
              ),
            ))),onTap: onTap,);
  }

}

