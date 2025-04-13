import 'package:eco_meter/app/core/constants/app_imports.dart';

class VerifyOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyOtpController>(
      () => VerifyOtpController(),
    );
  }
}