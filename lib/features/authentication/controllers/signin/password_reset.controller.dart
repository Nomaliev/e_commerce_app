import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/features/authentication/screens/forgetpassword/reset_password.dart';
import 'package:t_store/utils/popups/loaders.dart';

class PasswordResetController extends GetxController {
  static PasswordResetController get instance => Get.find();
  final email = TextEditingController();
  GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();

  Future<void> sendPasswordResetLink() async {
    try {
      if (!resetPasswordFormKey.currentState!.validate()) {
        return;
      }
      await AuthenticationRepository.instance
          .passwordResetLink(email.text.trim());
      AppLoaders.successSnackBar(
          title: 'Password reset link sent',
          message: 'Please check your inbox and reset your password');
      Get.to(AppResetPassword(
        email: email.toString(),
      ));
    } catch (e) {
      AppLoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
