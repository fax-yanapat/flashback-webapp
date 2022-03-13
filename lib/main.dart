import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/quiz/quiz_score.dart';
import 'package:flutter_application_1/screen/welcome_screen/welcome.dart';
import 'package:flutter_application_1/screen/quiz/quiz_home.dart';
import 'package:get/get.dart';

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
        home: homeQuizScreen());
  }
}
