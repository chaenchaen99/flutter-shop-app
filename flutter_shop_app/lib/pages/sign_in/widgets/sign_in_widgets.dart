import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/widgets/app_shadow.dart';
import 'package:flutter_shop_app/common/widgets/text_widgets.dart';

import '../../../common/utils/app_colors.dart';
import '../../../common/widgets/image_widgets.dart';

/*
  preferredSize widget gives you a height or space from the appbar downwards and we can
  put child in the given space.
 */

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: text16Normal(
      text: "Login",
      color: AppColors.primaryText,
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(10),
      child: Container(
        color: Colors.grey,
        height: 1,
      ),
    ),
  );
}

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

Widget appTextField(
    {String text = "",
    String iconName = "",
    String hintText = "Type your email"}) {
  return Container(
    padding: EdgeInsets.only(left: 25.w, right: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        const SizedBox(height: 5),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxDecorationTextField(),
          //row contains icon and textfield
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.w),
                child: appImage(imagePath: iconName),
              ),
              SizedBox(
                width: 190.w,
                height: 50.h,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: true,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
