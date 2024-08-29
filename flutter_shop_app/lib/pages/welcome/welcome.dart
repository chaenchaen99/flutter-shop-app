import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shop_app/common/widgets/text_widgets.dart';
import 'package:flutter_shop_app/pages/welcome/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              //firse page
              appOnboardingPage(
                imagePath: "assets/images/reading.png",
                title: "First See Learning",
                subTitle:
                    "Forget about of paper all knowleadge in one learning",
              ),
              //second page
              appOnboardingPage(
                imagePath: "assets/images/man.png",
                title: "Connect With Everyone",
                subTitle:
                    "Always keep in touch with your tutor and friends. Let's get connected.",
              ),
              appOnboardingPage(
                imagePath: "assets/images/boy.png",
                title: "Always Facinated Learning",
                subTitle:
                    "Anywhere, anytime. The time is at your destination. So study wherever you can.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
