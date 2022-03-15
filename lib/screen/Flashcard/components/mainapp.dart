import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../../../model/flashcard_data.dart';
import 'flashcard_view.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Flashcard> flashcards = [
    Flashcard(question: "อัตราเร็วของคลื่นแม่เหล็กไฟฟ้าในสุญญากาศ", answer: "3x10^8 เมตรต่อวินาที"),
    Flashcard(question: "คลื่นแม่เหล็กไฟฟ้าที่มีความถี่ต่อเนื่องกันเป็นช่วงกว้าง", answer: "สเปกตรัมคลื่นแม่เหล็กไฟฟ้า"),
    Flashcard(question: "คลื่นแม่เหล็กไฟฟ้าที่มีความถี่น้อยที่สุด", answer: "คลื่นวิทยุ"),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color(0xFF689F38),
        title: Text("Flashcard"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 300,
                height: 300,
                child: FlipCard(
                    front: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(flashcards[currentIndex].question, style: TextStyle(fontSize: 18),),
                      ],
                    ),
                      /*key: ObjectKey(1),
                      text: flashcards[currentIndex].question,*/
                    ),
                    back: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(flashcards[currentIndex].answer, style: TextStyle(fontSize: 18),),
                      ],
                    ),
                      /*key: ObjectKey(1),
                      text: flashcards[currentIndex].question,*/
                    ),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton.icon(
                    onPressed: showPreviouscard,
                    icon: Icon(Icons.chevron_left),
                    label: Text('ก่อนหน้า')),
                OutlinedButton.icon(
                    onPressed: showNextcard,
                    icon: Icon(Icons.chevron_right),
                    label: Text('ถัดไป')),
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
