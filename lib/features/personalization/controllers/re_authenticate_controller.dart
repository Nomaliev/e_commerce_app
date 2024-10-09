import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/re_authenticate.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/network_manager.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';
import 'package:t_store/utils/popups/loaders.dart';

class ReAuthenticateController extends GetxController {
  static ReAuthenticateController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final hidePassword = true.obs;
  GlobalKey<FormState> reAuthenticateFormKey = GlobalKey<FormState>();

  void deleteAccountWarningPopup() {
    Get.defaultDialog(
        contentPadding: const EdgeInsets.all(AppSizes.md),
        title: 'Delete Account',
        middleText:
            'Are you sure you want to delete your account permanently ? This action is not reversible and all of your date will be removed permanently.',
        confirm: ElevatedButton(
            onPressed: () => deleteUserAccount(),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                side: const BorderSide(color: Colors.red)),
            child: const Text('Delete')),
        cancel: OutlinedButton(
            onPressed: () => Get.back(), child: const Text('Cancel')));
  }

  Future<void> deleteUserAccount() async {
    try {
      AppFullScreenLoader.openLoadingDialog(
          'One second...', AppImages.docerAnimation);
      final provider = AuthenticationRepository.instance.authUser!.providerData
          .map((e) => e.providerId)
          .first;
      if (provider.isNotEmpty) {
        if (provider == 'google.com') {
          await AuthenticationRepository.instance.signInWithGoogle();
          await AuthenticationRepository.instance.deleteAccount();
          AppFullScreenLoader.stopLoading();
          Get.offAll(const AppLoginScreen());
        } else if (provider == 'password') {
          AppFullScreenLoader.stopLoading();
          Get.off(() => const ReAuthenticate());
        }
      }
    } catch (e) {
      AppFullScreenLoader.stopLoading();
      AppLoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  Future<void> reAuthenticateEmailAndPassword() async {
    try {
      AppFullScreenLoader.openLoadingDialog(
          'One second...', AppImages.docerAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      if (!reAuthenticateFormKey.currentState!.validate()) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance
          .reAuthenticateWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      await AuthenticationRepository.instance.deleteAccount();
      Get.offAll(const AppLoginScreen());
    } catch (e) {
      AppFullScreenLoader.stopLoading();
      AppLoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
