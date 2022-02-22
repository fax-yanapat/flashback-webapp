import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/mainapp.dart';

void main() {
  runApp(const Mainpage());
}

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int index = 0;
  final screens = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 72),
      ),
    ),
    MyApp(),
    Center(
      child: Text(
        'Quiz',
        style: TextStyle(fontSize: 72),
      ),
    ),
    Center(
      child: Text(
        'Meet',
        style: TextStyle(fontSize: 72),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: screens[index],
            appBar: AppBar(title: Text("Flashcard App")),
            bottomNavigationBar: NavigationBar(
              height: 60,
              backgroundColor: Colors.green.shade300,
              selectedIndex: index,
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.games_outlined), label: 'Card'),
                NavigationDestination(
                    icon: Icon(Icons.quiz_outlined), label: 'Quiz'),
                NavigationDestination(
                    icon: Icon(Icons.videocam_outlined), label: 'Meet'),
              ],
            )));
  }
}
