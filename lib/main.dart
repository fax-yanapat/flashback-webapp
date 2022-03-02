import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/welcome_screen/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: WelcomeScreen());
  }
}
