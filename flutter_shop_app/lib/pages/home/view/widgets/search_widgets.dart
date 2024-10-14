import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/utils/image_res.dart';
import 'package:flutter_shop_app/common/widgets/app_shadow.dart';
import 'package:flutter_shop_app/common/widgets/app_textfields.dart';
import 'package:flutter_shop_app/common/widgets/image_widgets.dart';

import '../../../../common/utils/app_colors.dart';

Widget searchBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 280.w,
        height: 40.h,
        decoration: appBoxShadow(
            color: AppColors.primaryBackground,
            boxBorder: Border.all(
              color: AppColors.primaryFourElementText,
            )),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 17.w),
              child: appImage(imagePath: ImageRes.ic_search),
            ),
            appTextFieldOnly(
              width: 240,
              height: 40,
              hintText: "Search your course",
            ),
          ],
        ),
      ),
      //search button
      GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(5.w),
          width: 40.w,
          height: 40.h,
          decoration: appBoxShadow(
            boxBorder: Border.all(color: AppColors.primaryElement),
          ),
          child: appImage(imagePath: ImageRes.searchButton),
        ),
      ),
    ],
  );
}
