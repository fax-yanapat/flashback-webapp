import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/question_controller.dart';
import 'package:flutter_application_1/screen/quiz/components/body.dart';
import 'package:get/get.dart';

class mainQuizScreen extends StatelessWidget {
  const mainQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
        appBar:
            AppBar(
              backgroundColor: Colors.transparent, 
              elevation: 0, 
              actions: [
                TextButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ]),
        body: Body());
  }
}