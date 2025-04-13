import 'package:eco_meter/app/core/constants/app_imports.dart';

class SignUpRoutes {
  SignUpRoutes._();

  static const signUp = '/sign-up';

  static final routes = [
    GetPage(
      name: signUp,
      page: () => const SignUpPage(),
      binding: SignUpBinding(),
    ),
  ];
}