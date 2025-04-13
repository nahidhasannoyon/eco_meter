import 'package:eco_meter/app/core/constants/app_imports.dart';

class SentOtpRoutes {
  SentOtpRoutes._();

  static const sentOtp = '/sent-otp';

  static final routes = [
    GetPage(
      name: sentOtp,
      page: () => const SentOtpPage(),
      binding: SentOtpBinding(),
    ),
  ];
}