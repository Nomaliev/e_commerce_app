import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeModeController extends GetxController {
  static ThemeModeController get instance => Get.find();
  final isDarkMode=false.obs;

  @override
  void onInit(){
    isDarkMode.value=GetStorage().read('IsDark')??false;
    super.onInit();
  }

  setThemeMode(){
    if (isDarkMode.value==true) {
      return ThemeMode.dark;
    }else{
      return ThemeMode.light;
    }
  }
}