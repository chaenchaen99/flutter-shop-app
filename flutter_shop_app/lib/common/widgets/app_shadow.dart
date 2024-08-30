import 'package:flutter/material.dart';
import 'package:flutter_shop_app/common/utils/app_colors.dart';

BoxDecoration appBoxShadow({
  Color color = AppColors.primaryElement,
  double radius = 15.0,
  double sR = 1,
  double bR = 2,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: sR,
        blurRadius: bR,
        offset: const Offset(0, 1),
      ),
    ],
  );
}
