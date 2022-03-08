import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/constant/style.dart';
import 'package:flutter_application_1/screen/quiz/components/body.dart';
import 'package:flutter_application_1/screen/quiz/components/option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.questiondata,
  }) : super(key: key);

  final Question questiondata;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            questiondata.toString(),
            style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
          ),
          SizedBox(height: kDefaultPadding/2),
          Option(),
          Option(),
          Option(),
          Option(),
        ],
      ),
    );
  }
}
