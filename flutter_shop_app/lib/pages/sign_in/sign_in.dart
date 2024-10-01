import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/widgets/text_widgets.dart';
import 'package:flutter_shop_app/pages/sign_in/notifier/sign_in_notifier.dart';
import 'package:flutter_shop_app/pages/sign_in/sign_in_controller.dart';
import 'package:flutter_shop_app/pages/sign_in/widgets/sign_in_widgets.dart';
import '../../common/widgets/app_bar.dart';
import '../../common/widgets/app_textfields.dart';
import '../../common/widgets/button_widgets.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  late SignInController _controller;

  @override
  void initState() {
    _controller = SignInController(ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final signInProvider = ref.watch(signInNotifierProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppBar(title: "Login"),
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
                    func: (value) => ref
                        .read(signInNotifierProvider.notifier)
                        .onUserEmailChange(value),
                  ),
                  SizedBox(height: 20.h),
                  // password text box
                  appTextField(
                    text: "Password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Enter your password address",
                    func: (value) => ref
                        .read(signInNotifierProvider.notifier)
                        .onUserPasswordChange(value),
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
                    func: () => _controller.handleSignIn(),
                  )),
                  SizedBox(height: 20.h),
                  Center(
                    child: appButton(
                        buttonName: "Sign Up",
                        isLogin: false,
                        context: context,
                        func: () => Navigator.pushNamed(context, "/signUp")),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
