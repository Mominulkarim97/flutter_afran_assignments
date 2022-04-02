// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FontsTest extends StatelessWidget {
  const FontsTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "I'm using google fonts in this my_app application from main dart file",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "And this text is in custom font",
                style: TextStyle(fontSize: 40, fontFamily: "Smokum",color: Colors.white, backgroundColor: Color(0xff581845)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
