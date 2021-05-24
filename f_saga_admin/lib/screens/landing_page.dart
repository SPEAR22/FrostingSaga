import 'package:f_saga_admin/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            body: Container(
              child: Center(
                child: Text(snapshot.error),
              ),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return HomePage();
        }

        return Scaffold(
          body: Container(
            child: Center(
              child: Text("Intializing...."),
            ),
          ),
        );
      },
    );
  }
}
