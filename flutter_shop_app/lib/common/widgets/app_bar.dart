import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'text_widgets.dart';

AppBar buildAppBar({String title = ""}) {
  return AppBar(
    title: Text16Normal(
      text: title,
      color: AppColors.primaryText,
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(10),
      child: Container(
        color: Colors.grey.withOpacity(0.2),
        height: 1,
      ),
    ),
  );
}
