import 'dart:collection';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:hive/hive.dart';

import '../config.dart';

class Request {
  static var content =Hive.box("context");
  static getQueryString(var ctx){
    //aa=aa&
    var queryStr = "";
    ctx.forEach((key, value) {
      queryStr = queryStr +  key + "=" + value+"&";
    });
    return queryStr;
  }
  static Get(var path, var param) async {
    param.put("token",content.get("token",defaultValue:""));
    print(Config.API+path);
    print(param);
    var response = await http.get( Config.API+path+"?"+getQueryString(param));
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      throw "服务器异常";
    }
  }

  static Post(var path, var data) async {
    var token=content.get("token",defaultValue:"");
    Map<String,String> header=HashMap();
    header.putIfAbsent("Authorization", () => "Bearer " +token.toString());

    var response = await http.post(Config.API+path,headers:header,body: data);
    if (response.statusCode == 200) {
      print(response.body);
      return convert.jsonDecode(response.body);
    } else {
      throw "服务器异常";
    }
  }

}
