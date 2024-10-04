import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shop_app/common/routes/routes.dart';
import 'package:flutter_shop_app/common/utils/app_styles.dart';
import 'package:flutter_shop_app/firebase_options.dart';
import 'package:flutter_shop_app/global.dart';
import 'package:flutter_shop_app/pages/application/application.dart';
import 'package:flutter_shop_app/pages/sign_in/sign_in.dart';
import 'package:flutter_shop_app/pages/sign_up/sign_up.dart';
import 'package:flutter_shop_app/pages/welcome/welcome.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await Global.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.appThemeData,
        initialRoute: "/",
        onGenerateRoute: AppPages.generateRouteSettings,
      ),
    );
  }
}
