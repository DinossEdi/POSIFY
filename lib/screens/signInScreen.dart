import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posify/constants/colors.dart';
import 'package:posify/screens/signUpScreen.dart';

class signInScreen extends StatefulWidget {
  signInScreen({Key key}) : super(key: key);

  @override
  _signInScreenState createState() => _signInScreenState();
}

class _signInScreenState extends State<signInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 100, 100, 20),
              width: size.width,
              child: Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 50,
                  color: kPrimaryColor,
                ),
              ),
            ),
            Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: kPrimaryColor)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: kPrimaryColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(signUpScreen());
                        },
                        style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor,
                            textStyle: TextStyle(
                              fontSize: 22,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0),
                            )),
                        child: Text("Sign In")),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.to(signUpScreen());
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
