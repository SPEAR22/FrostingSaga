import 'package:flutter/material.dart';
import 'package:frosting_saga/buttons/google_signin_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    Size a = deviceInfo.size;
    double devHeight = a.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.07 * devHeight),
                    bottomRight: Radius.circular(0.07 * devHeight)),
                child: Container(
                  height: 2 * (devHeight / 3),
                  //color: Color(0xff59d9fc),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffcdc3ff), Color(0xff59d9fc)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                ),
              ),
              Column(
                children: [
                  Text("Welcome to ,"),
                  Text("Frosting Saga"),
                  Text("Every Cake has a Story to Tell!!")
                ],
              ),
            ],
          ),
          Container(
            height: devHeight / 3,
            child: Center(
              child: GoogleSignInButton(),
            ),
          )
        ],
      ),
    );
  }
}
