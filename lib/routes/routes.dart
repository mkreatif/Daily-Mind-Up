import 'package:daily_mind_up/pages/login/login.dart';
import 'package:daily_mind_up/pages/splash/splash.dart';
import 'package:get/route_manager.dart';

class AppRoutes {
  static const LOGIN = "/login";
}

class AppPages {
  AppPages._();

  static const INITIAL = "/";
  static final routes = [
    GetPage(name: INITIAL, page: () => SplashPage()),
    GetPage(name: AppRoutes.LOGIN, page: () => LoginPage()),
  ];
}
