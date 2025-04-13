import 'package:eco_meter/app/core/constants/app_imports.dart';

class SentOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SentOtpController>(
      () => SentOtpController(),
    );
  }
}