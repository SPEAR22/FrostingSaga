import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
    this.subline,
  }) : super(key: key);
  final String text, image, subline;

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    Size a = deviceInfo.size;
    double devHeight = a.height;
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          text,
          style: TextStyle(
            fontSize: 0.05 * devHeight,
            color: Color(0xff3B62E5),
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Text(
            subline,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 0.025 * devHeight),
          ),
        ),
        Spacer(
          flex: 2,
        ),
        Container(
          child: Image.asset(
            image,
            height: 0.45 * devHeight,
          ),
        ),
      ],
    );
  }
}
