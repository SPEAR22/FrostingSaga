import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FlatButton(
        child: Text("Sign Out"),
        onPressed: () {
          GoogleSignIn().signOut();
          FirebaseAuth.instance.signOut();
        },
      )),
    );
  }
}
