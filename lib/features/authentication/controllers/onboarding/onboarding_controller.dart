import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      GetStorage().write('FirstTime', false);
      Get.offAll(() => const AppLoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(page,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(2,
        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
  }
}
