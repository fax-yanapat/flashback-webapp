import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สร้างบัญชีผู้ใช้"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ชื่อผู้ใช้", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (String username) {
                      profile.username = username;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("รหัสผ่าน", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    obscureText: true,
                    onSaved: (String password) {
                      profile.password = password;
                    },
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      child: Text("ลงทะเบียน", style: TextStyle(fontSize: 18)),
                      onPressed: () {
                        formKey.currentState.save();
                        print("username = ${profile.username} password = ${profile.password}")
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
