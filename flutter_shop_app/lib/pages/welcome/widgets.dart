import 'package:flutter/material.dart';

import '../../common/widgets/text_widgets.dart';

Widget appOnboardingPage({
  String imagePath = "assets/images/reading.png",
  String title = "",
  String subTitle = "",
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
    ],
  );
}
