import 'package:eco_meter/app/core/constants/app_imports.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 4,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Sign In",
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
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Form(
                key: controller.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: controller.isPasswordVisible.value,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (bool? value) {},
                              checkColor: Color(0xFF47BA80),
                              activeColor: Colors.white,
                              side: const BorderSide(color: Color(0xFF47BA80)),
                            ),
                            const Text(
                              "Remember me",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgotten Password",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF47BA80),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF47BA80),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        onPressed: () {
                          // if (controller.formKey.currentState!.validate()) {

                          // Todo Perform sign-in action
                          // After sign-in, navigate to the next page
                          Get.offAllNamed(HomeRoutes.home);
                          // }
                        },
                        child: const Text(
                          "Sign In",
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
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: const Text(
                      "Or Sign In with",
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
                      Image.asset(AppImages.googleLogo, width: 40, height: 40),
                      const SizedBox(width: 20),
                      Image.asset(AppImages.fbLogo, width: 40, height: 40),
                      const SizedBox(width: 20),
                      Image.asset(AppImages.msLogo, width: 40, height: 40),
                      const SizedBox(width: 20),
                      Image.asset(AppImages.appleLogo, width: 40, height: 40),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFADADAD),
                        ),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          Get.offAllNamed(SignUpRoutes.signUp);
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF47BA80),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
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
          ],
        ),
      ),
    );
  }
}
