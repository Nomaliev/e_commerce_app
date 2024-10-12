import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_store/data/repositories/user/user_repo.dart';
import 'package:t_store/features/authentication/models/user_model.dart';
import 'package:t_store/utils/popups/loaders.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  var user = UserModel.empty().obs;
  final loadingShimmer = false.obs;
  final ppLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }

  Future<void> fetchUserRecord() async {
    try {
      loadingShimmer.value = true;
      final user = await userRepository.fetchUserData();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally {
      loadingShimmer.value = false;
    }
  }

  //Save user record from any registration provider
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      await fetchUserRecord();
      if (user.value.id.isEmpty) {
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

          await userRepository.saveUserData(user);
        }
      }
    } catch (e) {
      AppLoaders.warningSnackBar(
          title: 'Data not saved', message: e.toString());
    }
  }

  Future<void> uploadProfilePicture() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
          imageQuality: 70,
          maxHeight: 512,
          maxWidth: 512);
      if (image != null) {
        ppLoading.value = true;
        final imageUrl =
            await userRepository.uploadImage('Users/Images/Profile', image);

        final Map<String, dynamic> json = {'ProfilePicture': imageUrl};
        await userRepository.updateSingleField(json);

        user.value.profilePicture = imageUrl;
        user.refresh();
      }
    } catch (e) {
      AppLoaders.errorSnackBar(title: 'Error', message: e.toString());
    } finally {
      ppLoading.value = false;
    }
  }

  void changeTheme() {}
}
