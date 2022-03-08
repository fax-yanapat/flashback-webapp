import 'package:flutter/material.dart';

void main() {
  runApp(QuizScreens());
}

class QuizScreens extends StatelessWidget {
  const QuizScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF689F38),
        title: Text("Quiz"),
      ),
    );
  }
}
