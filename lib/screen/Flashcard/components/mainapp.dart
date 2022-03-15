import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'flashcard.dart';
import 'flashcard_view.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Flashcard> flashcards = [
    Flashcard(question: "กินข้าวร้านไหนดี", answer: "ป้าต้อย"),
    Flashcard(question: "ไปไหนดี ?", answer: "ทะเล"),
    Flashcard(question: "why you here?", answer: "Dont know"),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color(0xFF689F38),
        title: Text("FlashBack"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 300,
                height: 300,
                child: FlipCard(
                    front: FlashcardView(
                      key: ObjectKey(1),
                      text: flashcards[currentIndex].question,
                    ),
                    back: FlashcardView(
                      key: ObjectKey(2),
                      text: flashcards[currentIndex].answer,
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton.icon(
                    onPressed: showPreviouscard,
                    icon: Icon(Icons.chevron_left),
                    label: Text('Prev')),
                OutlinedButton.icon(
                    onPressed: showNextcard,
                    icon: Icon(Icons.chevron_right),
                    label: Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }

  void showNextcard() {
    setState(() {
      currentIndex =
          (currentIndex + 1 < flashcards.length) ? currentIndex + 1 : 0;
    });
  }

  void showPreviouscard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 >= 0) ? currentIndex - 1 : flashcards.length - 1;
    });
  }
}
