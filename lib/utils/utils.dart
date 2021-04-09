import 'package:crypto/crypto.dart';
import 'dart:convert';

cryptoPassword(String source){
  var bytes = utf8.encode(source); // data being hashed
  return sha256.convert(bytes).toString();
}