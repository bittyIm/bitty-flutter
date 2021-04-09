
import 'package:flutter/widgets.dart';

class H1 extends StatelessWidget {
  String content;
  H1({Key key,this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UIText(content: content,size: 30,);
  }
}
class H2 extends StatelessWidget {
  String content;
  H2({Key key,this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UIText(content: content,size: 26,);
  }
}
class H3 extends StatelessWidget {
  String content;
  H3({Key key,this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UIText(content: content,size: 20,);
  }
}
class H4 extends StatelessWidget {
  String content;
  H4({Key key,this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UIText(content: content,size: 18,);
  }
}

class H5 extends StatelessWidget {
  String content;
  H5({Key key,this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UIText(content: content,size: 16,);
  }
}

class Caption extends StatelessWidget {
  String content;
  Caption({Key key,this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UIText(content: content,size: 14,);
  }
}

class ButtonLable extends StatelessWidget {
  String content;
  ButtonLable({Key key,this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UIText(content: content,size: 12,);
  }
}

class TextRegular extends StatelessWidget {
  String content;
  TextRegular({Key key,this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return UIText(content: content,size: 14,);
  }
}

class TextLight extends StatelessWidget {
  String content;
  TextLight({Key key,this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return UIText(content: content,size: 14,color:Color(0xff98A9BC));
  }
}



class UIText extends StatelessWidget {
  String content;
  double size;
  Color color;
  UIText({Key key,this.content,this.size, Color color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(content,style:TextStyle(fontSize:size,color: color));
  }
}