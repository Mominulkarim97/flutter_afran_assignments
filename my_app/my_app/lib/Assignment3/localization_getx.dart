// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class LocalizationWithGetX extends StatelessWidget {
  const LocalizationWithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("app_name".tr),
            Text("app_title".tr),
SizedBox(height: 100,),
            Row(
mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Get.updateLocale(Locale('en', 'US'));
                    },
                    child: Text("English")),
TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('bn', 'BD'));
                },
                child: Text("Bangla"))
              ],
            ),
            
          ],
        ),
      ),
    ));
  }
}
