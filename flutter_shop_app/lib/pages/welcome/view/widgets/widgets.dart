import 'package:flutter/material.dart';
import 'package:flutter_shop_app/common/routes/app_routes_name.dart';
import 'package:flutter_shop_app/common/utils/constants.dart';
import 'package:flutter_shop_app/common/widgets/app_shadow.dart';
import '../../../../common/widgets/text_widgets.dart';
import '../../../../global.dart';

class AppOnBoardingPage extends StatelessWidget {
  final PageController controller;
  final String imagePath;
  final String title;
  final String subTitle;
  final int index;
  final BuildContext context;

  const AppOnBoardingPage({
    super.key,
    required this.controller,
    required this.context,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //first page
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 15),
        Text24Normal(
          text: title,
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.only(right: 30, left: 30),
          child: Text16Normal(text: subTitle),
        ),
        _nextButton(index, controller, context),
      ],
    );
  }
}

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
      Text24Normal(
        text: title,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: Text16Normal(text: subTitle),
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
        //remember if we are first time or not
        Global.storageService
            .setBool(AppConstants.STORAGE_DEVICE_OPEN_FIRST_KEY, true);

        Navigator.pushNamed(
          context,
          AppRoutesName.SIGN_IN,
        );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(
        top: 50,
        left: 25,
        right: 25,
      ),
      decoration: appBoxShadow(),
      child: Center(
        child: Text16Normal(
          text: index < 3 ? "Next" : "Get started",
          color: Colors.white,
        ),
      ),
    ),
  );
}
