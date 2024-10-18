import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/utils/app_colors.dart';
import 'package:flutter_shop_app/common/utils/image_res.dart';
import 'package:flutter_shop_app/common/widgets/text_widgets.dart';
import 'package:flutter_shop_app/pages/home/controller/home_controller.dart';

import '../../../../global.dart';

Widget userName() {
  return Container(
    child: text24Normal(
      text: Global.storageService.getUserProfile().name ?? '',
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget helloText() {
  return Container(
    child: text24Normal(
      text: "Hello, ",
      color: AppColors.primaryThreeElementText,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget banner({required WidgetRef ref, required PageController controller}) {
  return Column(
    children: [
      SizedBox(
        width: 325.w,
        height: 160.h,
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            ref.read(homeScreenBannerDotsProvider.notifier).setIndex(index);
          },
          children: [
            bannerContainer(imagePath: ImageRes.banner1),
            bannerContainer(imagePath: ImageRes.banner2),
            bannerContainer(imagePath: ImageRes.banner3),
          ],
        ),
      ),
      SizedBox(height: 5.h),
      DotsIndicator(
        dotsCount: 3,
        position: ref.watch(homeScreenBannerDotsProvider),
        mainAxisAlignment: MainAxisAlignment.center,
        decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(24.0, 8.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
      ),
    ],
  );
}

Widget bannerContainer({String? imagePath}) {
  return Container(
    width: 325.w,
    height: 140.h,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath!),
        fit: BoxFit.fill,
      ),
    ),
  );
}
