import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/common/utils/image_res.dart';
import 'package:flutter_shop_app/pages/welcome/provider/welcome_notifier.dart';
import 'package:flutter_shop_app/pages/welcome/view/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Welcome extends ConsumerWidget {
  Welcome({super.key});
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.only(top: 60),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                //showing our three welcome pages
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: controller,
                  children: [
                    //firse page
                    AppOnBoardingPage(
                      controller: controller,
                      imagePath: ImageRes.reading,
                      title: "First See Learning",
                      subTitle:
                          "Forget about of paper all knowleadge in one learning",
                      index: 1,
                      context: context,
                    ),
                    //second page
                    AppOnBoardingPage(
                      controller: controller,
                      imagePath: ImageRes.man,
                      title: "Connect With Everyone",
                      subTitle:
                          "Always keep in touch with your tutor and friends. Let's get connected.",
                      index: 2,
                      context: context,
                    ),
                    AppOnBoardingPage(
                      controller: controller,
                      imagePath: ImageRes.boy,
                      title: "Always Facinated Learning",
                      subTitle:
                          "Anywhere, anytime. The time is at your destination. So study wherever you can.",
                      index: 3,
                      context: context,
                    ),
                  ],
                ),
                //for showing dots
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: index,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(24.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
