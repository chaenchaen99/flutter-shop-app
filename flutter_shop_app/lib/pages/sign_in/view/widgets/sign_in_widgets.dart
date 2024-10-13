import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
  preferredSize widget gives you a height or space from the appbar downwards and we can
  put child in the given space.
 */

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(
      left: 70.w,
      right: 70.w,
      top: 40.w,
      bottom: 20.w,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png")
      ],
    ),
  );
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    child: SizedBox(
      width: 40.w,
      height: 40.h,
      child: Image.asset(
        imagePath,
      ),
    ),
  );
}
