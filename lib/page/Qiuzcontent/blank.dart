import 'package:flutter/material.dart';

class Blank extends StatelessWidget {
  const Blank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF689F38),
        title: Text("FlashBack"),
      ),
    );
  }
}
