import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/welcome_screen/welcome.dart';

/*class HomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  final _userData = FirebaseFirestore.instance.collection("_userData");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              auth.currentUser!.email!,
              //_userData.doc()
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              child: Text("ออกจากระบบ"),
              onPressed: () {
                auth.signOut().then((value) {
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
*/