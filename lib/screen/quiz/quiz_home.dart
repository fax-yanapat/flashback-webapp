import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/constant/style.dart';
import 'package:flutter_application_1/screen/constant/ui_helper.dart';
import 'package:flutter_application_1/screen/quiz/quiz_main.dart';

class homeQuizScreen extends StatelessWidget {
  const homeQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kGreenColor,
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
                  Text("Enter your infomation below"),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "User ID",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton.icon(
                      icon: Icon(
                        Icons.arrow_right_alt,
                      ),
                      label: Text("Start"),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: ((context) {
                          return mainQuizScreen();
                        })));
                      }),
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
