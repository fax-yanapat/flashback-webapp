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
    Flashcard(
        question: "อัตราเร็วของคลื่นแม่เหล็กไฟฟ้าในสุญญากาศ",
        answer: "3x10^8 เมตรต่อวินาที"),
    Flashcard(
        question: "คลื่นแม่เหล็กไฟฟ้าที่มีความถี่ต่อเนื่องกันเป็นช่วงกว้าง",
        answer: "สเปกตรัมคลื่นแม่เหล็กไฟฟ้า"),
    Flashcard(
        question: "คลื่นแม่เหล็กไฟฟ้าที่มีความถี่น้อยที่สุด",
        answer: "คลื่นวิทยุ"),
    Flashcard(question: "มีสองระบบคือระบบ AM และระบบ FM", answer: "คลื่นวิทยุ"),
    Flashcard(
        question:
            "คลื่นวิทยุที่ส่งขึ้นไปสะท้อนในบรรยากาศ แล้วกลับมายังเครื่องรับวิทยุ",
        answer: "คลื่นฟ้า"),
    Flashcard(
        question: "คลื่นวิทยุที่ส่งจากสถานีส่งไปถึงเครื่องรับวิทยุโดยตรง",
        answer: "คลื่นดิน"),
    Flashcard(
        question:
            "เป็นระบบที่ให้ amplitude เปลี่ยนตามสัญญาณเสียง แต่ความถี่คงที่",
        answer: "คลื่นวิทยุระบบ AM"),
    Flashcard(
        question:
            "เป็นระบบที่ให้ ความถี่ เปลี่ยนตามสัญญาณเสียงแต่ amplitude คงที่",
        answer: "คลื่นวิทยุระบบ FM"),
    Flashcard(
        question: "เป็นระบบคลื่นวิทยุที่ใช้สื่อสารทางไกลได้ดี",
        answer: "คลื่นวิทยุระบบ AM"),
    Flashcard(
        question: "เป็นระบบคลื่นวิทยุที่สื่อสารระยะใกล้ได้ดี",
        answer: "คลื่นวิทยุระบบ FM"),
    Flashcard(
        question: "สามารถทำให้โมเลกุลของน้ำสั่นจนเกิดความร้อน",
        answer: "คลื่นไมโครเวฟ"),
    Flashcard(
        question: "เป็นคลื่นแม่เหล็กไฟฟ้าที่สะท้อนผิวโลหะได้ดี",
        answer: "คลื่นไมโครเวฟ"),
    Flashcard(
        question: "นิยมใช้ประโยชน์ในการถ่ายภาพพื้นผิวดาวเคราะห์",
        answer: "คลื่นไมโครเวฟ"),
    Flashcard(
        question: "เป็นคลื่นแม่เหล็กไฟฟ้าที่แผ่ออกมาเวลาวัตถุมีความร้อน",
        answer: "รังสีอินฟราเรด"),
    Flashcard(
        question:
            "ประสาทสัมผัสของมนุษย์สามารถรับรู้ถึงคลื่นแม่เหล็กไฟฟ้าชนิดนี้ได้ในความยาวคลื่นบางช่วง",
        answer: "รังสีอินฟราเรด"),
    Flashcard(
        question: "สิ่งมีชีวิตทุกชนิดจะแผ่คลื่นแม่เหล็กไฟฟ้าชนิดนี้ออกมา",
        answer: "รังสีอินฟราเรด"),
    Flashcard(
        question: "นิยมใช้ในการควบคุมอาวุธระยะไกล และทำรีโมทคอนโทรล",
        answer: "รังสีอินฟราเรด"),
    Flashcard(
        question: "เป็นคลื่นแม่เหล็กไฟฟ้าที่ตามนุษย์สามารถรับรู้ได้",
        answer: "แสง"),
    Flashcard(
        question: "ความยาวคลื่นอยู่ในช่วง 400–700 นาโนเมตร", answer: "แสง"),
    Flashcard(
        question:
            "เป็นคลื่นแม่เหล็กไฟฟ้าที่มีพลังงานสูงจนสามารถทำให้อิเล็กตรอนหลุดจากโมเลกุลอากาศกลายเป็นไอออนได้ในชั้นไอโอโนสเฟียร์",
        answer: "รังสีอัลตราไวโอเลต"),
    Flashcard(
        question: "โอโซนในชั้นบรรยากาศช่วยป้องกันคลื่นแม่เหล็กไฟฟ้าชนิดนี้ได้",
        answer: "รังสีอัลตราไวโอเลต"),
    Flashcard(
        question:
            "ถ้าได้รับคลื่นแม่เหล็กไฟฟ้าชนิดนี้ในปริมาณมากจะทำให้เป็นอันตรายต่อผิวหนัง",
        answer: "รังสีอัลตราไวโอเลต"),
    Flashcard(question: "นิยมใช้ฆ่าเชื้อโรค", answer: "รังสีอัลตราไวโอเลต"),
    Flashcard(
        question: "สามารถทะลุผ่านสิ่งกีดขวางหนา ๆได้", answer: "รังสีเอ็กซ์"),
    Flashcard(
        question: "ในทางการแพทย์นิมยมใช้ตรวจสอบความผิดปกติของอวัยวะภายใน",
        answer: "รังสีเอ็กซ์"),
    Flashcard(
        question: "เกิดจากการสลายตัวของธาตุกัมมันตรังสี", answer: "รังสีแกมมา"),
    Flashcard(
        question: "ทางการแพทย์สามารถใช้ในการทำลายเซลล์มะเร็ง",
        answer: "รังสีแกมมา"),
    Flashcard(
        question: "เป็นคลื่นแม่เหล็กไฟฟ้าที่มีความถี่สูงที่สุด",
        answer: "รังสีแกมมา"),
    Flashcard(
        question: "เป็นคลื่นแม่เหล็กไฟฟ้าที่มีพลังงานน้อยที่สุด",
        answer: "คลื่นวิทยุ"),
    Flashcard(
        question: "เป็นคลื่นแม่เหล็กไฟฟ้าที่มีความยาวคลื่นมากที่สุด",
        answer: "คลื่นวิทยุ"),
    Flashcard(
        question: "เป็นคลื่นแม่เหล็กไฟฟ้าที่มีพลังงานสูงที่สุด",
        answer: "รังสีแกมมา"),
    Flashcard(
        question:
            "คลื่นแม่เหล็กไฟฟ้าที่เรียงจากความถี่มากที่สุดไปความถี่น้อยที่สุด",
        answer: "รังสีแกมมา รังสีเอ็กซ์ อัลตราไวโอเลต แสง ไมโครเวฟ คลื่นวิทยุ"),
    Flashcard(
        question:
            "คลื่นแม่เหล็กไฟฟ้าที่เรียงจากพลังงานมากที่สุดไปพลังงานน้อยที่สุด",
        answer: "รังสีแกมมา รังสีเอ็กซ์ อัลตราไวโอเลต แสง ไมโครเวฟ คลื่นวิทยุ"),
    Flashcard(
        question:
            "คลื่นแม่เหล็กไฟฟ้าที่เรียงจากความยาวคลื่นมากที่สุดไปความยาวคลื่นน้อยที่สุด",
        answer: "คลื่นวิทยุ ไมโครเวฟ แสง อัลตราไวโอเลต รังสีเอ็กซ์ "),
    Flashcard(
        question:
            "คลื่นแม่เหล็กไฟฟ้าที่เรียงจากความยาวคลื่นน้อยที่สุดไปความยาวคลื่นมากที่สุด",
        answer: "รังสีแกมมา"),
    Flashcard(
        question:
            "รังสีอินฟราเรดช่วงที่มีพลังงานสูงที่สุด นิยมใช้ในอุตสาหกรรมที่ต้องการความร้อนสูง",
        answer: "รังสีแกมมา รังสีเอ็กซ์ อัลตราไวโอเลต แสง ไมโครเวฟ คลื่นวิทยุ"),
    Flashcard(
        question: "รังสีอินฟราเรดที่นิยมนำไปใช้ในการสื่อสารด้วยเส้นใยนำแสง",
        answer: "รังสีอินฟราเรดใกล้"),
    Flashcard(
        question:
            "รังสีอินฟราเรดช่วงที่มีพลังงานต่ำที่สุด ถูกนำไปใช้ในการสร้างอุปกรณ์ให้ความร้อน",
        answer: "รังสีอินฟราเรดปานกลาง"),
    Flashcard(
        question: "ในการเชื่อมโลหะด้วยไฟฟ้าสามารถทำให้เกิดรังสีชนิดนี้ขึ้นได้ ",
        answer: "รังสีอินฟราเรดไกล"),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.green,
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
                front: FlashcardView(
                  text: flashcards[currentIndex].question,
                  key: ObjectKey(0),
                ),
                back: FlashcardView(
                  text: flashcards[currentIndex].answer,
                  key: ObjectKey(1),
                ),
              ),
            ),
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
      ObjectKey(0);
    });
  }

  void showPreviouscard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 >= 0) ? currentIndex - 1 : flashcards.length - 1;
      ObjectKey(0);
    });
  }
}
