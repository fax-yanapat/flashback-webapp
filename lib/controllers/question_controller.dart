import 'package:flutter/animation.dart';
import 'package:flutter_application_1/model/question.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class QuestionController extends GetxController
    // ignore: deprecated_member_use
    with
        SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => _animation;

  /*final List<Question> _questions = questiondata
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['option'],
            answer: question['answer_index']),
      )
      .toList();

  List<Question> get question => _questions;*/

  final List<Question> _questions = em_question
      .map(
        (question) => Question(
            id: question['id'], 
            question: question['question'], 
            answer: question['answer_index'], 
            options: question['options']),
      )
      .toList();

  List<Question> get questions => _questions;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward();

    super.onInit();
  }
}
