import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/popups/loaders.dart';

class EmailVerificationController extends GetxController {
  static EmailVerificationController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerAutoRedirect();
    super.onInit();
  }

//Send Email Verification Link
  void sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      AppLoaders.successSnackBar(
          title: 'Email sent',
          message: 'Please check your inbox and verify your email');
    } catch (e) {
      AppLoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

//Timer to automatically redirect on Email Verification
  setTimerAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (FirebaseAuth.instance.currentUser != null) {
        FirebaseAuth.instance.currentUser?.reload();
      }
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => AppSuccessScreen(
            title: AppTexts.yourAccountCreatedTitle,
            subtitle: AppTexts.yourAccountCreatedSubTitle,
            image: AppImages.successfullyRegisterAnimation,
            onPressed: () =>
                AuthenticationRepository.instance.screenRedirect()));
      }
    });
  }

//Manually check if the email verified
  checkEmailVerificationStatus() {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => AppSuccessScreen(
          title: AppTexts.yourAccountCreatedTitle,
          subtitle: AppTexts.yourAccountCreatedSubTitle,
          image: AppImages.successfullyRegisterAnimation,
          onPressed: () => AuthenticationRepository.instance.screenRedirect()));
    }
  }
}
