import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/welcome_screen/welcome.dart';

class HomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              auth.currentUser!.email!,
              style : TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              child: Text("ออกจากระบบ"),
              onPressed: (){
                auth.signOut().then((value){
                  Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context) {
                    return WelcomeScreen();
                  }));
                });
              }, 
            )
          ],
        ),
      ),
    );
  }
}
