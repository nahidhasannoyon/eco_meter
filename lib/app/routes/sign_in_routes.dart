import 'package:eco_meter/app/core/constants/app_imports.dart';

class SignInRoutes {
  SignInRoutes._();

  static const signIn = '/sign-in';

  static final routes = [
    GetPage(
      name: signIn,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
  ];
}