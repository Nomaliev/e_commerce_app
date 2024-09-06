import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/app_circular_image.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppProfileSettings extends StatelessWidget {
  const AppProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
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
                    const AppCircularImage(
                        image: AppImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
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
                  title: 'Name', value: 'Tabriz Nomaliyev', onTap: () {}),
              ProfileMenu(title: 'Username', value: 'nomaliev', onTap: () {}),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const AppSectionHeading(title: 'Personal Information'),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ProfileMenu(
                  title: 'User ID',
                  value: '55555',
                  onTap: () {},
                  icon: Iconsax.copy),
              ProfileMenu(
                  title: 'E-mail', value: 'nomaliev04@gmail.com', onTap: () {}),
              ProfileMenu(
                  title: 'Phone Number',
                  value: '+994-55-555-55-55',
                  onTap: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onTap: () {}),
              ProfileMenu(
                  title: 'Date of Birth', value: '26 Nov, 2004', onTap: () {}),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              TextButton(
                  onPressed: () {},
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
