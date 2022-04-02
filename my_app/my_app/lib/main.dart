// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Assignment1/first_screen.dart';
import 'package:my_app/Assignment4/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/Assignment2/fonttest.dart';
import 'package:get/get.dart';
import 'package:my_app/Assignment3/localization_getx.dart';
import 'package:my_app/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.blueGrey[200],
          appBarTheme: AppBarTheme(backgroundColor: Colors.green[600]),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.green[700]))),
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.robotoMonoTextTheme(
              Theme.of(context).textTheme.apply())),
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(body: MyButtons())),
    );
  }
}

class MyButtons extends StatefulWidget {
  MyButtons({Key? key}) : super(key: key);

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      color: Colors.pink,
                      padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
                      child: Text(
                        'Click the buttons bellow to view all the assignments',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.pink,
                      size: 30,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber[400],
                  onPrimary: Colors.black45,
                  fixedSize: Size.fromHeight(60)),
              onPressed: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => FirstScreen()));
              },
              child: Text(
                  "Form Validation & User Input Assignment with route and navigation also"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber[400],
                  onPrimary: Colors.black45,
                  fixedSize: Size.fromHeight(60)),
              onPressed: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => FontsTest()));
              },
              child: Text("Google Fonts and Custom Fonts Assignment"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber[400],
                  onPrimary: Colors.black45,
                  fixedSize: Size.fromHeight(60)),
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => LocalizationWithGetX()));
              },
              child: Text("Localization with Getx Assignment"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber[400],
                  onPrimary: Colors.black45,
                  fixedSize: Size.fromHeight(50)),
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => Theme_Data()));
              },
              child: Text("Theme Assignment"),
            ),
          ),
        ],
      ),
    );
  }
}
