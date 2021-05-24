import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants{

  //Text Sizes
  static const regularHeading = TextStyle(
    fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black);
  static const boldHeading = TextStyle(
      fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.black);

  static const regularDarkText = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black);

  //Color Style
  static const kPrimaryColor = Color(0xFFFF7643);
  static const kPrimaryLightColor = Color(0xFFFFECDF);
  static const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), 
    Color(0xFFFF7643)],
  );
  static const kSecondaryColor = Color(0xFF979797);
  static const kSecondaryColorLight = Color(0xFFD8D8D8);
  static const kTextColor = Color(0xFF757575);

  //Animation Style
  static const kAnimationDuration = Duration(milliseconds: 200);

  //Error Style
  static final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String kEmailNullError = "Please Enter your email";
  static const String kInvalidEmailError = "Please Enter Valid Email";
  static const String kPassNullError = "Please Enter your password";
  static const String kShortPassError = "Password is too short";
  static const String kMatchPassError = "Passwords don't match";
  static const String kNamelNullError = "Please Enter your name";
  static const String kPhoneNumberNullError = "Please Enter your phone number";
  static const String kAddressNullError = "Please Enter your address";

  /*final otpInputDecoration = InputDecoration(
    contentPadding:
        EdgeInsets.symmetric(vertical: getProportionteScreenWidth(15)),
    border: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
  );

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(getProportionteScreenWidth(15)),
      borderSide: BorderSide(color: Constants.kTextColor),
    );
  }*/
  static const defaultDuration = Duration(milliseconds: 250);

}