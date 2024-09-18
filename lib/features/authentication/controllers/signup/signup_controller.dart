import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/network_manager.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';
import 'package:t_store/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  final privacyPolicy = false.obs;
  final hidePassword = true.obs;
  final hideConfirmPassword = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final passwordConfirm = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      //Start Loading
      AppFullScreenLoader.openLoadingDialog(
          'We are processing your information...', AppImages.docerAnimation);

      //Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      //Form Validation
      // ignore: dead_code
      if (signupFormKey.currentState!.validate()) return;

      //Privacy Policy Check
      if (!privacyPolicy.value) {
        AppLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create account, you must have to read and accept Privacy Policy & Terms of Use.');
      }
      return;
    } catch (e) {
      AppLoaders.errorSnackBar(title: 'Error', message: e.toString());
    } finally {
      AppFullScreenLoader.stopLoading();
    }
  }
}
