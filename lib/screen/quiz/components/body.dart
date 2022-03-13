import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/question_controller.dart';
import 'package:flutter_application_1/model/question.dart';
import 'package:flutter_application_1/screen/constant/style.dart';
import 'package:flutter_application_1/screen/quiz/components/question_card.dart';
import 'package:get/get.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: 12),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text.rich(
                  TextSpan(
                    text: "คำถามที่ 1",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.black),
                    children: [
                      TextSpan(
                          text: "/20",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.black)),
                    ],
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: 12),
              Expanded(
                child: PageView.builder(
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index]
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Question extends StatelessWidget {
  const Question({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      em_question[0]['question'],
      style:
          Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
    );
  }
}
