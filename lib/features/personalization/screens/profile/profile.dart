import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/app_circular_image.dart';
import 'package:t_store/common/widgets/shimmers/shimmer.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/personalization/controllers/re_authenticate_controller.dart';
import 'package:t_store/features/personalization/controllers/user_controller.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppProfileSettings extends StatelessWidget {
  const AppProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() {
                      final networkImage = controller.user.value.profilePicture;
                      final profileImage = networkImage.isNotEmpty
                          ? networkImage
                          : AppImages.user;
                      return controller.ppLoading.value
                          ? const AppShimmerEffect(
                              width: 55, height: 55, radius: 55)
                          : AppCircularImage(
                              image: profileImage,
                              width: 80,
                              height: 80,
                              isNetworkImage: networkImage.isNotEmpty);
                    }),
                    TextButton(
                        onPressed: () => controller.uploadProfilePicture(),
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const AppSectionHeading(title: 'Profile Information'),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ProfileMenu(
                  title: 'Name',
                  value: controller.user.value.fullName,
                  onTap: () => Get.off(() => const ChangeName())),
              ProfileMenu(
                  title: 'Username',
                  value: controller.user.value.username,
                  onTap: () {}),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const AppSectionHeading(title: 'Personal Information'),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ProfileMenu(
                  title: 'User ID',
                  value: controller.user.value.id,
                  onTap: () {},
                  icon: Iconsax.copy),
              ProfileMenu(
                  title: 'E-mail',
                  value: controller.user.value.email,
                  onTap: () {}),
              ProfileMenu(
                  title: 'Phone Number',
                  value: controller.user.value.phoneNumber,
                  onTap: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onTap: () {}),
              ProfileMenu(
                  title: 'Date of Birth', value: '26 Nov, 2004', onTap: () {}),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              TextButton(
                  // ignore: void_checks
                  onPressed: () => Get.put(ReAuthenticateController())
                      .deleteAccountWarningPopup(),
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
