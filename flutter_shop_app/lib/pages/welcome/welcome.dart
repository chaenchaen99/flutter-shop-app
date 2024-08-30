import 'package:flutter/material.dart';
import 'package:flutter_shop_app/pages/welcome/widgets.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              //firse page
              appOnboardingPage(
                _controller,
                imagePath: "assets/images/reading.png",
                title: "First See Learning",
                subTitle:
                    "Forget about of paper all knowleadge in one learning",
                index: 1,
              ),
              //second page
              appOnboardingPage(
                _controller,
                imagePath: "assets/images/man.png",
                title: "Connect With Everyone",
                subTitle:
                    "Always keep in touch with your tutor and friends. Let's get connected.",
                index: 2,
              ),
              appOnboardingPage(
                _controller,
                imagePath: "assets/images/boy.png",
                title: "Always Facinated Learning",
                subTitle:
                    "Anywhere, anytime. The time is at your destination. So study wherever you can.",
                index: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
