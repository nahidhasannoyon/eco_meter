import 'package:eco_meter/app/core/constants/app_imports.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0).w,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    Text(
                      "Sign In",
                      style: TextStyle(
                        fontFamily: AppFonts.poppins,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Let’s save environment together",
                      style: TextStyle(
                        fontFamily: AppFonts.inter,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80.h),
              Form(
                key: controller.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                      validator:
                          (value) => Validators.validateEmail(value ?? ''),
                      decoration: InputDecoration(
                        label: Text(
                          "Email",
                          style: TextStyle(
                            fontFamily: AppFonts.poppins,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "user@example.com",
                        hintStyle: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontSize: 16.sp,
                          color: Color(0xFFD6D6D6),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Obx(
                      () => TextFormField(
                        obscureText: !controller.isPasswordVisible.value,
                        controller: controller.passwordController,
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
                            iconSize: 20.sp,
                            color: Color(0xFFD6D6D6),
                          ),
                          label: Text(
                            "Password",
                            style: TextStyle(
                              fontFamily: AppFonts.poppins,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "**********",
                          hintStyle: TextStyle(
                            fontFamily: AppFonts.inter,
                            fontSize: 16.sp,
                            color: Color(0xFFD6D6D6),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
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
                            Text(
                              "Remember me",
                              style: TextStyle(
                                fontFamily: AppFonts.inter,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgotten Password",
                            style: TextStyle(
                              fontFamily: AppFonts.inter,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF47BA80),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    SizedBox(
                      width: double.infinity,
                      child: Obx(
                        () => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF47BA80),
                            padding: const EdgeInsets.symmetric(vertical: 15).w,
                          ),
                          onPressed:
                              controller.isLoading.value
                                  ? () {}
                                  : () async {
                                    await controller.signIn();
                                  },
                          child:
                              controller.isLoading.value
                                  ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                  : Text(
                                    "Sign In",
                                    style: TextStyle(
                                      fontFamily: AppFonts.inter,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Or Sign In with",
                      style: TextStyle(
                        fontFamily: AppFonts.inter,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFADADAD),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.googleLogo,
                        width: 40.w,
                        height: 40.h,
                      ),
                      const SizedBox(width: 20),
                      Image.asset(AppImages.fbLogo, width: 40.w, height: 40.h),
                      const SizedBox(width: 20),
                      Image.asset(AppImages.msLogo, width: 40.w, height: 40.h),
                      const SizedBox(width: 20),
                      Image.asset(
                        AppImages.appleLogo,
                        width: 40.w,
                        height: 40.h,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 60.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFADADAD),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      InkWell(
                        onTap: () {
                          Get.offAllNamed(SignUpRoutes.signUp);
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: AppFonts.inter,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF47BA80),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Powered by',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey,
                          fontFamily: AppFonts.inter,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        'M360 ICT',
                        style: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
