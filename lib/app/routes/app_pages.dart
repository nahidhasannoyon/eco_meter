import 'package:eco_meter/app/core/constants/app_imports.dart';

class AppPages {
  AppPages._();

  static const initial = '/splash';

  static final routes = [
    ...SignInRoutes.routes,
    ...SignUpRoutes.routes,
    ...DetailsRoutes.routes,
    ...SplashRoutes.routes,
    ...HomeRoutes.routes,
  ];
}
