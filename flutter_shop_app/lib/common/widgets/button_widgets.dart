import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/utils/app_colors.dart';
import 'package:flutter_shop_app/common/widgets/app_shadow.dart';
import 'package:flutter_shop_app/common/widgets/text_widgets.dart';

Widget appButton({
  String buttonName = "",
  double width = 325,
  double height = 50,
  bool isLogin = true,
  BuildContext? context,
  void Function()? func,
}) {
  return GestureDetector(
    onTap: () {
      if (func == null) {
        print("This handler is null");
      } else {
        func();
      }
    },
    child: Container(
      width: width.w,
      height: height.h,
      decoration: appBoxShadow(
        color: isLogin ? AppColors.primaryElement : Colors.white,
        boxBorder: Border.all(
          color: AppColors.primaryFourElementText,
        ),
      ),
      child: Center(
        child: Text16Normal(
          text: buttonName,
          color: isLogin ? AppColors.primaryBackground : AppColors.primaryText,
        ),
      ),
    ),
  );
}
