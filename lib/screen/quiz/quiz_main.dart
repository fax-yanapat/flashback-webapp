import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/quiz/components/body.dart';

class mainQuizScreen extends StatelessWidget {
  const mainQuizScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: (){}, child: Text("Skip")),
        ]
      ),
      body: Body()
    );
  }
}

