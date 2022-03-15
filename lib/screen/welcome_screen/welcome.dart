import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/constant/ui_helper.dart';
import 'package:flutter_application_1/screen/login.dart';
import 'package:flutter_application_1/screen/register.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register/Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("asset/images/login.png"),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Get.to(() => RegisterScreen());
                },
                icon: Icon(Icons.add),
                label: Text("สร้างบัญชีผู้ใช้", style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                icon: Icon(Icons.login),
                label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
              ),
            ),
            Text('Already have an account? '),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {
                Get.to(() => LoginScreen());
              },
              child: const Text('Login'),
            ),
          ]),
        ),
      ),
    );
  }
}
