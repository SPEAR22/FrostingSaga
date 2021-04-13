import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:frosting_saga/screens/home_page.dart';
import 'package:frosting_saga/screens/login_page.dart';

class LandingPage extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text(snapshot.error)),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Scaffold(
                    body: Center(
                      child: Text("Error: ${streamSnapshot.error}"),
                    ),
                  );
                }
                if (streamSnapshot.connectionState == ConnectionState.active) {
                  User _user = streamSnapshot.data;
                  if (_user == null) {
                    return LoginPage();
                  } else {
                    return HomePage();
                  }
                }
                return Scaffold(
                  body: Center(
                      child: Stack(
                    children: [
                      CircularProgressIndicator(),
                      Text("Checking Authentiaction"),
                    ],
                  )),
                );
              });
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Scaffold(
          body: Center(
              child: Stack(
            children: [
              CircularProgressIndicator(),
              Text("Intializing"),
            ],
          )),
        );
      },
    );
  }
}
