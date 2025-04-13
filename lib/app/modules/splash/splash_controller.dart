import 'package:eco_meter/app/core/constants/app_imports.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Navigate to the sign in page after a delay
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(SignInRoutes.signIn);
    });
  }
}