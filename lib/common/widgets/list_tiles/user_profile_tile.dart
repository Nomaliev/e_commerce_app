import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/images/app_circular_image.dart';
import 'package:t_store/features/personalization/controllers/user_controller.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class AppUserProfileTile extends StatelessWidget {
  const AppUserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      leading: const AppCircularImage(image: AppImages.user),
      title: Text(
        controller.user.value.fullName,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AppColors.white),
      ),
      subtitle: Text(
        controller.user.value.email,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: AppColors.white),
      ),
      trailing: IconButton(
          onPressed: () => Get.to(() => const AppProfileSettings()),
          icon: const Icon(
            Iconsax.edit,
            color: AppColors.white,
          )),
    );
  }
}
