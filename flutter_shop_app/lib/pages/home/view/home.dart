import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop_app/common/widgets/app_bar.dart';
import 'package:flutter_shop_app/pages/home/view/widgets/home_widget.dart';
import 'package:flutter_shop_app/pages/home/view/widgets/search_widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Home"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              helloText(),
              userName(),
              SizedBox(height: 20.h),
              searchBar(),
              SizedBox(height: 20.h),
              banner(),
            ],
          ),
        ),
      ),
    );
  }
}
