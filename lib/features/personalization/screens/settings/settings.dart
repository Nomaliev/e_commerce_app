import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/container/main_header.dart';
import 'package:t_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:t_store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppProfile extends StatelessWidget {
  const AppProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          AppMainHeaderContainer(
              child: Column(
            children: [
              CustomAppBar(
                title: Text(
                  'Account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: AppColors.white),
                ),
              ),
              const AppUserProfileTile(),
              const SizedBox(height: AppSizes.spaceBtwSections)
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                const AppSectionHeading(title: 'Account Settings'),
                const SizedBox(height: AppSizes.spaceBtwItems),
                AppSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Adresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {}),
                AppSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    onTap: () {}),
                AppSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and completed orders',
                    onTap: () {}),
                AppSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    onTap: () {}),
                AppSettingsMenuTile(
                    icon: Iconsax.discount_circle,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    onTap: () {}),
                AppSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                    onTap: () {}),
                AppSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {}),
                const SizedBox(height: AppSizes.spaceBtwSections),
                const AppSectionHeading(title: 'App Settings'),
                const SizedBox(height: AppSizes.spaceBtwItems),
                AppSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload data to your Cloud Firebase',
                    onTap: () {}),
                AppSettingsMenuTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subTitle: 'Set recommendation based on location',
                  onTap: () {},
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                AppSettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subTitle: 'Search result is safe for all ages',
                  onTap: () {},
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),
                AppSettingsMenuTile(
                  icon: Iconsax.image,
                  title: 'HD Image Quality',
                  subTitle: 'Set image quality to be seen',
                  onTap: () {},
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),
                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout'))),
                const SizedBox(height: AppSizes.spaceBtwSections * 2.5)
              ],
            ),
          )
        ],
      )),
    );
  }
}
