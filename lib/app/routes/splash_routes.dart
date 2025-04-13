import 'package:eco_meter/app/core/constants/app_imports.dart';

class SplashRoutes {
  SplashRoutes._();

  static const splash = '/splash';

  static final routes = [
    GetPage(
      name: splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}