import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:frosting_saga/widgets/custom_app_bar.dart';
import 'package:frosting_saga/widgets/custom_drawr.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomAppBar(),
            Center(
                child: TextButton(
              child: Text("Sign Out"),
              onPressed: () {
                GoogleSignIn().signOut();
                FirebaseAuth.instance.signOut();
              },
            )),
          ],
        ),
      ),
    );
  }
}
