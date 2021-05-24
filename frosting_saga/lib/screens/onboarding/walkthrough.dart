import 'package:flutter/material.dart';
import 'package:frosting_saga/screens/onboarding/components/body.dart';
//import 'package:megabite/size_config.dart';

class WalkThrough extends StatelessWidget {
  static String routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Body()),
    );
  }
}
