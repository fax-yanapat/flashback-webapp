import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/register.dart';
import 'package:get/get.dart';
import 'screen/home.dart';
import 'screen/login.dart';
import 'screen/quiz/quiz_home.dart';
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
