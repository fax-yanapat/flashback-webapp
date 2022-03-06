import 'package:flutter/material.dart';

void main() {
  runApp(Blank());
}

class Blank extends StatelessWidget {
  const Blank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlashBack"),
      ),
    );
  }
}
