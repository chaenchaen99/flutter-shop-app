import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/widgets/text_widgets.dart';
import 'package:flutter_shop_app/pages/sign_in/widgets/sign_in_widgets.dart';

import '../../common/widgets/button_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppBar(),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //top login buttons
                  thirdPartyLogin(),
                  //more login options message
                  Center(
                    child: text14Normal(
                      text: "Or use your email account to login",
                    ),
                  ),
                  SizedBox(height: 50.h),
                  // email text box
                  appTextField(
                    text: "Email",
                    iconName: "assets/icons/user.png",
                    hintText: "Enter your email address",
                  ),
                  SizedBox(height: 20.h),
                  // password text box
                  appTextField(
                    text: "Password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Enter your password address",
                  ),
                  SizedBox(height: 20.h),
                  //forgot text
                  Container(
                    margin: EdgeInsets.only(left: 20.w),
                    child: textUnderline(
                      text: "forgot password?",
                    ),
                  ),
                  SizedBox(height: 100.h),
                  Center(
                      child: appButton(
                    buttonName: "Login",
                  )),
                  SizedBox(height: 20.h),
                  Center(
                    child: appButton(
                      buttonName: "Register",
                      isLogin: false,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
