import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สร้างบัญชีผู้ใช้"),
      ),
      body: Container(
        child: Form(
          child: Column(
            children: [
              Text("ชื่อผู้ใช้",style:TextStyle(fontSize: 20)),
              TextFormField(),
              SizedBox(height: 15,),
              Text("รหัสผ่าน",style:TextStyle(fontSize: 20)),
              TextFormField(),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
