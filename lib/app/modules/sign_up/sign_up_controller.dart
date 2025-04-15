import 'package:eco_meter/app/core/constants/app_imports.dart';

class SignUpController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  RxBool isPasswordVisible = false.obs;
  final isLoading = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<void> signUp() async {
    if (formKey.currentState!.validate()) {
      try {
        isLoading.value = true;
        final result = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: emailController.text,
              password: passwordController.text,
            );
        if (result.user != null) {
          final user = result.user;
          await FirebaseFirestore.instance
              .collection('users')
              .doc(user!.uid)
              .set({
                'name': nameController.text,
                'phone': phoneController.text,
                'email': emailController.text,
              });
          Get.offAllNamed(HomeRoutes.home, arguments: nameController.text);
        } else {
          Get.snackbar(
            "Error",
            "Sign up failed. Please try again.",
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
      } catch (e) {
        Get.snackbar(
          "Error",
          e.toString(),
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } finally {
        isLoading.value = false;
      }
    }
  }
}
