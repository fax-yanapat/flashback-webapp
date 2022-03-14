import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/question_controller.dart';
import 'package:flutter_application_1/screen/quiz/quiz_main.dart';
import 'package:get/get.dart';

import 'quiz_home.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Score"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(),
              Text("Score",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Colors.black)),
              Spacer(),
              Text(
                "${_qnController.correctAns}/${_qnController.questions.length}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black),
              ),
              Spacer(flex: 3),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    child: Text("กลับสู่หน้าหลัก"),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: ((context) {
                        return homeQuizScreen();
                      })));
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
