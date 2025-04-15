import 'package:eco_meter/app/core/constants/app_imports.dart';

class Validators {
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email can\'t be empty'.tr;
    }
    if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email address'.tr;
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password can\'t be empty'.tr;
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long'.tr;
    }
    return null;
  }

  static String? validateName(String value) {
    if (value.isEmpty) {
      return 'Name can\'t be empty'.tr;
    }
    return null;
  }

  static String? validateConfirmPassword(
    String password,
    String confirmPassword,
  ) {
    if (password != confirmPassword) {
      return 'Passwords do not match'.tr;
    }
    return null;
  }

  static String? validatePhoneNumber(String value) {
    if (value.isEmpty) {
      return 'Phone number can\'t be empty'.tr;
    }
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Please enter a valid phone number'.tr;
    }
    return null;
  }
}
