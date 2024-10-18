import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class Text24Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;

  const Text24Normal({
    super.key,
    this.text = '',
    this.color = AppColors.primaryText,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontFamily: 'MontserratSemibold',
        fontSize: 24,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Text16Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const Text16Normal({
    super.key,
    this.text = '',
    this.color = AppColors.primarySecondaryElementText,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'MontserratMedium',
        color: color,
        fontSize: 16,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Text14Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;

  const Text14Normal({
    super.key,
    this.text = '',
    this.color = AppColors.primaryThreeElementText,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontFamily: 'MontserratMedium',
        color: color,
        fontSize: 16,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Text11Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const Text11Normal({
    super.key,
    this.text = '',
    this.color = AppColors.primaryElement,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'MontserratMedium',
        color: color,
        fontSize: 11.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}

class TextUnderline extends StatelessWidget {
  final String text;
  const TextUnderline({
    super.key,
    this.text = "Your text",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12.sp,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primaryText,
          color: AppColors.primaryText,
        ),
      ),
    );
  }
}
