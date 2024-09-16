import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationController extends GetxController {
  static AuthenticationController get instance => Get.find();
  final deviceStorage = GetStorage();
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    deviceStorage.writeIfNull('FirstTime', true);
    deviceStorage.read('FirstTime') != true
        ? Get.offAll(() => const AppLoginScreen())
        : Get.offAll(() => const Onboarding());
  }
}
