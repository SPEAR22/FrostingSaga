import 'package:flutter/material.dart';

class SignInActText extends StatelessWidget {
  const SignInActText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    Size a = deviceInfo.size;
    double devHeight = a.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "By Continuing you agree to our ",
          style: TextStyle(fontSize: 0.02 * devHeight),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, null),
          child: Text(
            "T&C",
            style: TextStyle(
                fontSize: 0.02 * devHeight,
                color: Colors.blueAccent[700],
                decoration: TextDecoration.underline),
          ),
        ),
        Text(
          " and ",
          style: TextStyle(fontSize: 0.02 * devHeight),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, null),
          child: Text(
            "Private Policy",
            style: TextStyle(
                fontSize: 0.02 * devHeight,
                color: Colors.blueAccent[700],
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
