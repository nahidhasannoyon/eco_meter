import 'package:eco_meter/app/core/constants/app_imports.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  RxBool isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<void> signIn() async {
    if (formKey.currentState!.validate()) {
      try {
        isLoading.value = true;
        final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        if (result.user != null) {
          // log(result.user!.uid.toString());
          // log(result.user!.email.toString());
          // fetch user data from firestore
          final userDoc =
              await FirebaseFirestore.instance
                  .collection('users')
                  .doc(result.user!.uid)
                  .get();
          // userDoc.data()!.forEach((key, value) {
          //   log('$key: $value');
          // });
          Get.offAllNamed(HomeRoutes.home, arguments: userDoc['name']);
        } else {
          Get.snackbar(
            "Error",
            "Invalid email or password",
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
