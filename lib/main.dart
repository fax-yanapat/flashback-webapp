import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/welcome_screen/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Physics Flashcard',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: WelcomeScreen());
  }
}
