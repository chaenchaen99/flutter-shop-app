import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

Widget text24Normal({
  String text = "",
  Color color = AppColors.primaryText,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontFamily: 'MontserratSemibold',
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget text16Normal(
    {String text = "", Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'MontserratMedium',
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );
}
