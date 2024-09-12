import 'package:flutter/material.dart';
import 'package:flutter_shop_app/common/widgets/app_shadow.dart';
import 'package:flutter_shop_app/pages/sign_in/sign_in.dart';
import '../../common/widgets/text_widgets.dart';

Widget appOnboardingPage(
  PageController controller, {
  String imagePath = "assets/images/reading.png",
  String title = "",
  String subTitle = "",
  int index = 0,
  required BuildContext context,
}) {
  return Column(
    //first page
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      const SizedBox(height: 15),
      text24Normal(
        text: title,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(index, controller, context),
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      } else {
        Navigator.pushNamed(
          context,
          "/signIn",
        );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(
        top: 100,
        left: 25,
        right: 25,
      ),
      decoration: appBoxShadow(),
      child: Center(
        child: text16Normal(
          text: index < 3 ? "Next" : "Get started",
          color: Colors.white,
        ),
      ),
    ),
  );
}
