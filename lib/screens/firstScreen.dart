import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posify/constants/colors.dart';
import 'package:posify/screens/signUpScreen.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "POSify",
              style: TextStyle(
                color: Colors.white,
                fontSize: 70,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 200,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: TextButton(
                  child: Text(
                "Sign up",
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              )),
            ),
            Container(
              width: size.width * 0.8,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(signUpScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 22,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      )),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  )),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          side: BorderSide(width: 2, color: Colors.white))),
                  child: Text("Sign In")),
            )
          ],
        ),
      ),
    );
  }
}
