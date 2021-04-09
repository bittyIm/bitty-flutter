import 'package:dino/api/auth.dart';
import 'package:dino/components/button.dart';
import 'package:dino/ui/theme.dart';
import 'package:dino/utils/utils.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {

  TextEditingController _accountController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // resizeToAvoidBottomPadding: false,
      body: GestureDetector(
        onTap: () {
          // Navigator.pop(context);
        },
        child: Stack(
          alignment: FractionalOffset(1, -0.3),
          children: [
            Container(
                child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: FractionalOffset(1, -0.3),
                    child: Image(image: AssetImage('images/bg.png')),
                  ),
                ),
                Container(
                    child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 5.0), //阴影xy轴偏移量
                            blurRadius: 5.0, //阴影模糊程度
                            spreadRadius: 1.0 //阴影扩散程度
                            )
                      ]),
                  // color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Center(
                          child: Text(
                            "Create new account",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: TextField(
                            controller: _accountController,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Color(0xff98A9BC)),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Color(0xffF8FAFB),
                                hintText: "Enter your account"),
                            obscureText: true,
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Color(0xff98A9BC)),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Color(0xffF8FAFB),
                                hintText: "Enter your email"),
                            obscureText: true,
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: TextField(
                            controller: _phoneController,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Color(0xff98A9BC)),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Color(0xffF8FAFB),
                                hintText: "Enter your phone"),
                            obscureText: true,
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Color(0xff98A9BC)),
                                focusedBorder: null,
                                border: InputBorder.none,
                                enabledBorder: null,
                                filled: true,
                                fillColor: Color(0xffF8FAFB),
                                hintText: "Enter your password"),
                            obscureText: true,
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          children: [
                            Checkbox(
                              value: false,
                              activeColor: Colors.blue,
                              onChanged: (bool) {
                                print("111");
                              },
                            ),
                            Text(
                              "I agree with terms & conditions",
                              style: TextStyle(color: Color(0xff98A9BC)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            children: [
                              Expanded(
                                  child: PrimaryBtn(title: "SIGN UP",onTap: (){
                                    doSign(context);
                                  })),
                            ],
                          )),
                    ],
                  ),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }

  void doSign(context) {
    Future<dynamic> res=Auth.reg({
      "account": _accountController.text,
      "password": cryptoPassword(_passwordController.text),
      "email":_emailController.text,
      "phone":_phoneController.text
    });
    res.then((value) => {
      if(value['code']==0){
        Navigator.pop(context),
      }else{
        _showMyDialog(context, value['msg'])
      }
    });

  }

  Future<void> _showMyDialog(context,content) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notice'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(content),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
