// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class Theme_Data extends StatelessWidget {
  const Theme_Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(),
body: Center(child: Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Text("I have already used some theme in main dart file for this project",
style: TextStyle(fontSize: 30,backgroundColor: Colors.pink),
),),)
);
  }
}