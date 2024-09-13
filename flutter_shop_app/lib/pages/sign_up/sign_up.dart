import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/widgets/text_widgets.dart';
import '../../common/widgets/app_bar.dart';
import '../../common/widgets/app_textfields.dart';
import '../../common/widgets/button_widgets.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppBar(title: "Sign Up"),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),
                  //more login options message
                  Center(
                    child: text14Normal(
                      text: "Enter your details below & free sign up",
                    ),
                  ),
                  SizedBox(height: 50.h),
                  //user name text box
                  appTextField(
                    text: "User name",
                    iconName: "assets/icons/user.png",
                    hintText: "Enter your user name",
                  ),
                  SizedBox(height: 20.h),
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
                  // confirm password text box
                  appTextField(
                    text: "Confirm password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Enter your Confirm Password",
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    margin: EdgeInsets.only(left: 25.w),
                    child: text14Normal(
                        text:
                            "By creating an account you are agreeing with our terms and conditions"),
                  ),
                  SizedBox(height: 100.h),
                  Center(
                    child: appButton(
                      buttonName: "Register",
                      isLogin: true,
                      context: context,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
