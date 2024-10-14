import 'package:flutter/material.dart';
import 'package:flutter_shop_app/common/widgets/image_widgets.dart';
import 'package:flutter_shop_app/pages/home/view/home.dart';
import '../../../../common/utils/app_colors.dart';
import '../../../../common/utils/image_res.dart';

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
    icon: _bottomContainer(imagePath: ImageRes.search),
    activeIcon: _bottomContainer(
      imagePath: ImageRes.search,
      color: AppColors.primaryElement,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Search",
  ),
  BottomNavigationBarItem(
    icon: _bottomContainer(imagePath: ImageRes.play),
    activeIcon: _bottomContainer(
      imagePath: ImageRes.play,
      color: AppColors.primaryElement,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Play",
  ),
  BottomNavigationBarItem(
    icon: _bottomContainer(imagePath: ImageRes.message),
    activeIcon: _bottomContainer(
      imagePath: ImageRes.message,
      color: AppColors.primaryElement,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Message",
  ),
  BottomNavigationBarItem(
    icon: _bottomContainer(imagePath: ImageRes.profile),
    activeIcon: _bottomContainer(
      imagePath: ImageRes.profile,
      color: AppColors.primaryElement,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Profile",
  ),
];

Widget _bottomContainer({
  double width = 15,
  double height = 15,
  String imagePath = ImageRes.home,
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
    const Home(),
    Center(
      child: appImage(
        imagePath: ImageRes.search,
        width: 250,
        height: 250,
      ),
    ),
    Center(
      child: appImage(
        imagePath: ImageRes.play,
        width: 250,
        height: 250,
      ),
    ),
    Center(
      child: appImage(
        imagePath: ImageRes.message,
        width: 250,
        height: 250,
      ),
    ),
    Center(
      child: appImage(
        imagePath: ImageRes.profile,
        width: 250,
        height: 250,
      ),
    ),
  ];

  return screens[index];
}
