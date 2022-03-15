import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_application_1/page/mainmenu.dart';

void main() {
  runApp(HomeMenu());
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

=======
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
>>>>>>> welcome-login
  @override
  MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
        title: 'FlashBack',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Mainmenuscreen());
=======
    return GetMaterialApp(
        title: 'Physics Flashcard',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: WelcomeScreen());
>>>>>>> welcome-login
  }
}
