import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/mainmenu.dart';

void main() {
  runApp(HomeMenu());
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlashBack',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Mainmenuscreen());
  }
}
