import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/welcome_screen/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBJ8pzy4qU6fQny3rcWpn4pFQxlWZfpnBI", 
      appId: "1:716016674491:web:d4e93a1ca5497fd32f2b9e", 
      messagingSenderId: "716016674491", 
      projectId: "flashback-91af7")
  );

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
