import 'package:eco_meter/app/core/constants/app_imports.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0).w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Text(
                "Sign Up",
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
              SizedBox(height: 30.h),
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
                      decoration: InputDecoration(
                        label: Text(
                          "Name",
                          style: TextStyle(
                            fontFamily: AppFonts.poppins,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "e.g: Ahmed Ariyan",
                        hintStyle: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFD6D6D6),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    TextFormField(
                      validator:
                          (value) =>
                              Validators.validatePhoneNumber(value ?? ''),
                      // maxLength: 11,
                      controller: controller.phoneController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text(
                          "Phone Number",
                          style: TextStyle(
                            fontFamily: AppFonts.poppins,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        prefix: SizedBox(
                          width: 70.w,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(AppImages.bdFlag),
                                width: 23.w,
                                height: 15.h,
                              ),
                              Text(
                                " +880",
                                style: TextStyle(
                                  fontFamily: AppFonts.inter,
                                  fontSize: 14.sp,
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
                          fontFamily: AppFonts.inter,
                          fontSize: 16.sp,
                          color: Color(0xFFD6D6D6),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
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
                    SizedBox(height: 10.h),
                    Obx(
                      () => TextFormField(
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
                            iconSize: 20.w,
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
                    Obx(
                      () => TextFormField(
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
                            iconSize: 20.w,
                            color: Color(0xFFD6D6D6),
                          ),
                          label: Text(
                            "Confirm Password",
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
                    SizedBox(height: 40.h),
                    SizedBox(
                      width: double.infinity,
                      child: Obx(
                        () => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF47BA80),
                            padding: EdgeInsets.symmetric(vertical: 15).w,
                          ),
                          onPressed:
                              controller.isLoading.value
                                  ? () {}
                                  : () async {
                                    await controller.signUp();
                                  },
                          child:
                              controller.isLoading.value
                                  ? CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                  : Text(
                                    "Sign Up",
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
              SizedBox(height: 40.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Or Sign Up with",
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
                  Image.asset(AppImages.googleLogo, width: 40.w, height: 40.h),
                  SizedBox(width: 20.w),
                  Image.asset(AppImages.fbLogo, width: 40.w, height: 40.h),
                  SizedBox(width: 20.w),
                  Image.asset(AppImages.msLogo, width: 40.w, height: 40.h),
                  SizedBox(width: 20.w),
                  Image.asset(AppImages.appleLogo, width: 40.w, height: 40.h),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFADADAD),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  InkWell(
                    onTap: () {
                      Get.offAllNamed(SignInRoutes.signIn);
                    },
                    child: Text(
                      "Sign In",
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
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Powered by',
                    style: TextStyle(
                      fontFamily: AppFonts.inter,
                      fontSize: 12.sp,
                      color: Colors.grey,
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
        ),
      ),
    );
  }
}
