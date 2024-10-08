import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/widgets/image_widgets.dart';

import '../../../common/utils/app_colors.dart';

var bottomTabs = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: _bottomContainer(),
    activeIcon: _bottomContainer(
      color: AppColors.primaryElement,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: _bottomContainer(imagePath: "assets/icons/search2.png"),
    activeIcon: _bottomContainer(
      imagePath: "assets/icons/search2.png",
      color: AppColors.primaryElement,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Search",
  ),
  BottomNavigationBarItem(
    icon: _bottomContainer(imagePath: "assets/icons/play-circle1.png"),
    activeIcon: _bottomContainer(
      imagePath: "assets/icons/play-circle1.png",
      color: AppColors.primaryElement,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Play",
  ),
  BottomNavigationBarItem(
    icon: _bottomContainer(imagePath: "assets/icons/message-circle.png"),
    activeIcon: _bottomContainer(
      imagePath: "assets/icons/message-circle.png",
      color: AppColors.primaryElement,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Message",
  ),
  BottomNavigationBarItem(
    icon: _bottomContainer(imagePath: "assets/icons/person2.png"),
    activeIcon: _bottomContainer(
      imagePath: "assets/icons/person2.png",
      color: AppColors.primaryElement,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Profile",
  ),
];

Widget _bottomContainer({
  double width = 15,
  double height = 15,
  String imagePath = "assets/icons/home.png",
  Color color = AppColors.primaryFourElementText,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: appImageWithColor(
      imagePath: imagePath,
      color: color,
    ),
  );
}

Widget appScreens({int index = 0}) {
  List<Widget> screens = [
    Center(
      child: appImage(
        imagePath: "assets/icons/home.png",
        width: 250,
        height: 250,
      ),
    ),
    Center(
      child: appImage(
        imagePath: "assets/icons/search2.png",
        width: 250,
        height: 250,
      ),
    ),
    Center(
      child: appImage(
        imagePath: "assets/icons/play-circle.png",
        width: 250,
        height: 250,
      ),
    ),
    Center(
      child: appImage(
        imagePath: "assets/icons/message-circle.png",
        width: 250,
        height: 250,
      ),
    ),
    Center(
      child: appImage(
        imagePath: "assets/icons/person2.png",
        width: 250,
        height: 250,
      ),
    ),
  ];

  return screens[index];
}
