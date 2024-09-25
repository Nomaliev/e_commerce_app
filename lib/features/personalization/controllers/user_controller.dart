import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/user/user_repo.dart';
import 'package:t_store/features/authentication/models/user_model.dart';
import 'package:t_store/utils/popups/loaders.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());

  //Save user record from any registration provider
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        //Convert name to first and last name
        final nameParts =
            UserModel.nameParts(userCredentials.user?.displayName);
        final username =
            UserModel.generateUsername(userCredentials.user?.displayName);

        //Convert data
        final user = UserModel(
            id: userCredentials.user!.uid,
            firstName: nameParts[0],
            lastName: nameParts.length > 1 ? nameParts.sublist(1).join() : '',
            username: username,
            email: userCredentials.user!.email ?? '',
            phoneNumber: userCredentials.user!.phoneNumber ?? '',
            profilePicture: userCredentials.user!.photoURL ?? '');
      }
    } catch (e) {
      AppLoaders.warningSnackBar(
          title: 'Data not saved', message: e.toString());
    }
  }
}
