import 'package:eco_meter/app/core/constants/app_imports.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    // Navigate to the sign in page after a delay
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(SignInRoutes.signIn);
    });
  }
}
