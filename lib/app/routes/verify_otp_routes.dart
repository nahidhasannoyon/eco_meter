import 'package:eco_meter/app/core/constants/app_imports.dart';

class VerifyOtpRoutes {
  VerifyOtpRoutes._();

  static const verifyOtp = '/verify-otp';

  static final routes = [
    GetPage(
      name: verifyOtp,
      page: () => const VerifyOtpPage(),
      binding: VerifyOtpBinding(),
    ),
  ];
}