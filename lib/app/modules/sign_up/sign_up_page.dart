import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eco_meter/app/core/constants/app_imports.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Let’s save environment together",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              Form(
                key: controller.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      validator:
                          (value) => Validators.validateName(value ?? ''),
                      controller: controller.nameController,
                      decoration: const InputDecoration(
                        label: Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "e.g: Ahmed Ariyan",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFD6D6D6),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      validator:
                          (value) =>
                              Validators.validatePhoneNumber(value ?? ''),
                      // maxLength: 11,
                      controller: controller.phoneController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text(
                          "Phone Number",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        prefix: SizedBox(
                          width: 70,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(AppImages.bdFlag),
                                width: 23,
                                height: 15,
                              ),
                              Text(
                                " +880",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9F9F9F),
                                ),
                              ),
                            ],
                          ),
                        ),
                        prefixStyle: TextStyle(
                          backgroundColor: Color(0xFFF1F1F1),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: " 17XXXXXXXX",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFD6D6D6),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                      validator:
                          (value) => Validators.validateEmail(value ?? ''),
                      decoration: const InputDecoration(
                        label: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "user@example.com",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFD6D6D6),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: controller.passwordController,
                      obscureText: !controller.isPasswordVisible.value,
                      validator:
                          (value) => Validators.validatePassword(value ?? ''),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.togglePasswordVisibility();
                          },
                          icon:
                              controller.isPasswordVisible.value
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                          iconSize: 20,
                          color: Color(0xFFD6D6D6),
                        ),
                        label: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "**********",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFD6D6D6),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: controller.confirmPasswordController,
                      obscureText: !controller.isPasswordVisible.value,
                      validator:
                          (value) => Validators.validateConfirmPassword(
                            controller.passwordController.text,
                            value ?? '',
                          ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.togglePasswordVisibility();
                          },
                          icon:
                              controller.isPasswordVisible.value
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                          iconSize: 20,
                          color: Color(0xFFD6D6D6),
                        ),
                        label: Text(
                          "Confirm Password",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "**********",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFD6D6D6),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF47BA80),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        onPressed: () async {
                          // Validate the form fields
                          if (controller.formKey.currentState!.validate()) {
                            final result = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                  email: controller.emailController.text,
                                  password: controller.passwordController.text,
                                );
                            log(result.toString());
                            if (result.user != null) {
                              // User successfully signed up
                              // You can save user data to Firestore or perform other actions here
                              final user = result.user;
                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(user!.uid)
                                  .set({
                                    'name': controller.nameController.text,
                                    'phone': controller.phoneController.text,
                                    'email': controller.emailController.text,
                                  });
                              // After sign-up, navigate to the next page
                              Get.offAllNamed(HomeRoutes.home);
                            } else {
                              // Handle sign-up error
                              Get.snackbar(
                                "Error",
                                "Sign up failed. Please try again.",
                                backgroundColor: Colors.red,
                                colorText: Colors.white,
                              );
                            }
                          }
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.center,
                child: const Text(
                  "Or Sign Up with",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFADADAD),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    // TODO: Implement Google Sign-In
                    // onTap: () {
                    // final google = GoogleAuthProvider();
                    // final credential = GoogleAuthProvider.credential(
                    //   accessToken: google.,
                    //   idToken: google.idToken,
                    // );
                    // },
                    child: Image.asset(
                      AppImages.googleLogo,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Image.asset(AppImages.fbLogo, width: 40, height: 40),
                  const SizedBox(width: 20),
                  Image.asset(AppImages.msLogo, width: 40, height: 40),
                  const SizedBox(width: 20),
                  Image.asset(AppImages.appleLogo, width: 40, height: 40),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFADADAD),
                    ),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Get.offAllNamed(SignInRoutes.signIn);
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF47BA80),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Powered by',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'M360 ICT',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
