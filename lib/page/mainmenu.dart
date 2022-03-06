import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/blank.dart';
import 'package:flutter_application_1/page/flashcardset/mainapp.dart';
import 'package:flutter_application_1/page/homescreen.dart';
import 'package:flutter_application_1/page/quiz.dart';

void main() {
  runApp(Mainmenuscreen());
}

class Mainmenuscreen extends StatelessWidget {
  const Mainmenuscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("FlashBack"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                    icon: Icon(Icons.home),
                    label: Text(
                      "Home",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyApp();
                      }));
                    },
                    icon: Icon(Icons.gamepad),
                    label: Text(
                      "Flashcard",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return QuizScreens();
                      }));
                    },
                    icon: Icon(Icons.question_answer),
                    label: Text(
                      "Quiz",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Blank();
                      }));
                    },
                    icon: Icon(Icons.feedback_outlined),
                    label: Text(
                      "Feedback",
                      style: TextStyle(fontSize: 20),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
