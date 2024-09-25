import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/popups/loaders.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  //Save user record from any registration provider
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {} catch (e) {
      AppLoaders.warningSnackBar(
          title: 'Data not saved', message: e.toString());
    }
  }
}
