import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/flashcard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 250,
                  height: 250,
                  child: FlipCard(
                      front: FlashcardView(
                        text: "What is your favorite agent",
                      ),
                      back: FlashcardView(
                        text: "Sova",
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_left),
                      label: Text('Prev')),
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                      label: Text('Next')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
