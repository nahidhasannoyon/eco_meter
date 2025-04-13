import 'package:eco_meter/app/core/constants/app_imports.dart';

class ResetPasswordRoutes {
  ResetPasswordRoutes._();

  static const resetPassword = '/reset-password';

  static final routes = [
    GetPage(
      name: resetPassword,
      page: () => const ResetPasswordPage(),
      binding: ResetPasswordBinding(),
    ),
  ];
}