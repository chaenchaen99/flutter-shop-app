import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/utils/app_colors.dart';
import 'package:flutter_shop_app/common/utils/image_res.dart';
import 'package:flutter_shop_app/common/widgets/app_shadow.dart';
import 'package:flutter_shop_app/common/widgets/image_widgets.dart';
import 'package:flutter_shop_app/pages/home/controller/home_controller.dart';

import '../../../../common/widgets/text_widgets.dart';
import '../../../../global.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text24Normal(
      text: Global.storageService.getUserProfile().name ?? '',
      fontWeight: FontWeight.bold,
    );
  }
}

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text24Normal(
      text: "Hello, ",
      color: AppColors.primaryThreeElementText,
      fontWeight: FontWeight.bold,
    );
  }
}

AppBar homeAppBar({String title = ''}) {
  return AppBar(
    title: Container(
      margin: EdgeInsets.only(
        left: 7.w,
        right: 7.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          appImage(
            imagePath: ImageRes.menu,
            width: 18.w,
            height: 12.h,
          ),
          GestureDetector(
            child: const AppBoxDecorationImage(),
          ),
        ],
      ),
    ),
  );
}

class HomeBanner extends StatelessWidget {
  final PageController controller;
  final WidgetRef ref;

  const HomeBanner({
    super.key,
    required this.controller,
    required this.ref,
  });

  @override
  Widget build(BuildContext context) {
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

class HomeMenuBar extends StatelessWidget {
  const HomeMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //see all courseItemGrid
        Container(
          margin: EdgeInsets.only(top: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text16Normal(
                text: "Choice your courseItemGrid",
                color: AppColors.primaryText,
                fontWeight: FontWeight.bold,
              ),
              GestureDetector(
                child: const Text14Normal(
                  text: "See All",
                  color: AppColors.primaryThreeElementText,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 15.w,
                right: 15.w,
                top: 5.h,
                bottom: 5.h,
              ),
              decoration: appBoxShadow(
                color: AppColors.primaryElement,
                radius: 7.w,
              ),
              child: const Text11Normal(text: "All"),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.w),
              child: const Text11Normal(
                text: "Popular",
                color: AppColors.primaryThreeElementText,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.w),
              child: const Text11Normal(
                text: "Newest",
                color: AppColors.primaryThreeElementText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CourseItemGrid extends StatelessWidget {
  const CourseItemGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 40,
            mainAxisSpacing: 40,
          ),
          itemBuilder: (_, int index) {
            return appImage();
          }),
    );
  }
}
