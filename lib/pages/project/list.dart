import 'package:dino/pages/project/empty.dart';
import 'package:dino/pages/project/item.dart';
import 'package:flutter/material.dart';

class ProjectList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      color: Color(0xcccccc),
      child: ProjectEmpty(),
    ));
  }
}
