import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signUpScreen extends StatefulWidget {
  signUpScreen({Key key}) : super(key: key);

  @override
  _signUpScreenState createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
          color: Color(0x00D5AA),
        ),
      ),
      body: Column(
        children: [Text("Sign up to get started")],
      ),
    );
  }
}
