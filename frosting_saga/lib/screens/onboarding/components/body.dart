import 'package:flutter/material.dart';
import 'package:frosting_saga/buttons/google_signin_button.dart';
import 'package:frosting_saga/constants.dart';
import 'package:frosting_saga/screens/onboarding/components/signin_act_text.dart';

import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": 'Get Started',
      "description": 'Only 3 Simple Steps!',
      "image": 'assets/steps.png',
    },
    {
      "text": 'Quick Order',
      "description":
          'Choose among Large Categories of Delicious Food with just One Tap',
      "image": 'assets/browse.png',
    },
    {
      "text": 'Secure Payment',
      "description": 'Secure Online Payment and Cash on Delivery Option',
      "image": 'assets/securepayment.jpg',
    },
    {
      "text": 'Fast Service',
      "description":
          'Fastest Delivery Service around the World, to Make You Enjoy Your Food Faster',
      "image": 'assets/quickservice.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    Size a = deviceInfo.size;
    double devHeight = a.height;
    debugPrint('movieTitle: $splashData');
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'],
                  image: splashData[index]['image'],
                  subline: splashData[index]['description'],
                ),
              ),
            ),
            new Divider(
              indent: 2000,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    new Divider(
                      indent: 2000,
                    ),
                    //Sign in Button
                    Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0.05 * devHeight),
                                  topRight: Radius.circular(0.05 * devHeight)),
                              child: Column(
                                children: [
                                  Container(
                                    height: devHeight / 11,
                                    child: Center(
                                      child: GoogleSignInButton(),
                                    ),
                                  ),
                                  new Divider(
                                    indent: 2000,
                                  ),
                                  SignInActText(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Constants.kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: currentPage == index ? 8 : 6,
      width: currentPage == index ? 8 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Color(0xff3B62E5)
            : Constants.kSecondaryColorLight,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
