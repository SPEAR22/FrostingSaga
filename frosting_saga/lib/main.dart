import 'package:flutter/material.dart';
import 'package:frosting_saga/screens/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frosting Saga',
      theme: ThemeData(
        fontFamily: 'Hind',
      ),
      home: LandingPage(),
    );
  }
}
