// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Assignment1/second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  TextEditingController _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
    Center(
    child: Text("TextFormField Widget"),),
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(hintText: "Enter your email"),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Email can't be empty";
                        } else if (val.length > 8) {
                          return "Email length can't be greater than 8";
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(hintText: "Enter your age"),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          InputDecoration(hintText: "Enter your phone number"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (_) => SecondScreen()));
                            }
                          },
                          child: Text("Submit")),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
    Center(
    child: Text("TextField Widget"),),
              TextField(
                controller: _editingController,
                decoration: InputDecoration(hintText: "Enter Name"),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_editingController.text);
                },
                child: Text("print"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
