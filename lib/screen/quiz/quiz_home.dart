import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/question_controller.dart';
import 'package:flutter_application_1/model/question.dart';
import 'package:flutter_application_1/screen/constant/style.dart';
import 'package:flutter_application_1/screen/constant/ui_helper.dart';
import 'package:flutter_application_1/screen/quiz/quiz_main.dart';
import 'package:get/get.dart';

import '../welcome_screen/homepage.dart';

class homeQuizScreen extends StatelessWidget {
  const homeQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text("Let's Quiz,",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text(
                    "Username : ${profile.username}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "เนื่อหา : แม่เหล็กและไฟฟ้า (20 ข้อ)",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  ElevatedButton.icon(
                      icon: Icon(
                        Icons.arrow_right_alt,
                      ),
                      label: Text("Start"),
                      onPressed: () {
                        QuestionController();

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: ((context) {
                          return mainQuizScreen();
                        })));
                      }),
                  verticalSpaceSmall,
                  Text(
                    "*เนื่องจากแอพลิเคชั่นนี้ยังอยู่ในขั้นตอนการพัฒนา เราจึงอนุญาตให้ผู้ใช้สามารถทำควิสได้เพียงเรื่องของแม่เหล็กและไฟฟ้า ส่วนในเนื้อหาอื่น ๆ จะมีอัพเดทเพิ่มเติมในอนาคต",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
