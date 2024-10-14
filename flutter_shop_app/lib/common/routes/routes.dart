import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/common/routes/app_routes_name.dart';
import 'package:flutter_shop_app/global.dart';
import 'package:flutter_shop_app/pages/application/view/application.dart';
import 'package:flutter_shop_app/pages/home/view/home.dart';
import 'package:flutter_shop_app/pages/sign_in/view/sign_in.dart';
import 'package:flutter_shop_app/pages/sign_up/view/sign_up.dart';
import 'package:flutter_shop_app/pages/welcome/view/welcome.dart';

class AppPages {
  static List<RouteEntity> routes() {
    return [
      RouteEntity(path: AppRoutesName.WELCOME, page: Welcome()),
      RouteEntity(path: AppRoutesName.SIGN_IN, page: const SignIn()),
      RouteEntity(path: AppRoutesName.REGISTER, page: const SignUp()),
      RouteEntity(path: AppRoutesName.APPLICATION, page: const Application()),
      RouteEntity(path: AppRoutesName.HOME, page: const Home()),
    ];
  }

  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    if (kDebugMode) {
      print("clicked route is ${settings.name}");
    }

    if (settings.name != null) {
      //flutter에는 list들 내 특정 필드를 비교할 수 있는 where 메서드가 있다
      var result = routes().where((element) => element.path == settings.name);

      if (result.isNotEmpty) {
        bool deviceFirstTime = Global.storageService.getDeviceFirstOpen();

        if (result.first.path == AppRoutesName.WELCOME && deviceFirstTime) {
          bool isLoggedIn = Global.storageService.isLoggedIn();
          if (isLoggedIn) {
            return MaterialPageRoute(
              builder: (_) => const Application(),
              settings: settings,
            );
          } else {
            return MaterialPageRoute(
              builder: (_) => const SignIn(),
              settings: settings,
            );
          }
        } else {
          if (kDebugMode) {
            print('App ran first time');

            return MaterialPageRoute(
              builder: (_) => result.first.page,
              settings: settings,
            );
          }
        }
      }
    }
    return MaterialPageRoute(
      builder: (_) => Welcome(),
      settings: settings,
    );
  }
}

class RouteEntity {
  String path;
  Widget page;

  RouteEntity({
    required this.path,
    required this.page,
  });
}
