import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/personalization/screens/settings/settings.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/features/shop/screens/store/store.dart';
import 'package:t_store/features/shop/screens/wishlist/wishlist.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class AppNavigation extends StatelessWidget {
  const AppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              backgroundColor: dark ? AppColors.black : AppColors.white,
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              enableFeedback: false,
              elevation: 0,
              unselectedItemColor:
                  dark ? AppColors.darkGrey : AppColors.darkGrey,
              selectedItemColor: AppColors.primary,
              currentIndex: controller.selectedIndex.value,
              onTap: (value) => controller.selectedIndex.value = value,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.shop), label: 'Store'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.heart), label: 'Wishlist'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.user), label: 'Profie')
              ])),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const AppHome(),
    const AppStore(),
    const AppWishList(),
    const AppProfile()
  ];
}
