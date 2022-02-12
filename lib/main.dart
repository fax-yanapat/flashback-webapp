import 'package:flutter/material.dart';

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
                child: Center(
                  child: Text("Sexy Flashcard"),
                ),
              ),
              Row(
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
