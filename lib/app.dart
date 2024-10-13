import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/bindings/general_bindings.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:t_store/features/personalization/controllers/theme_mode_controller.dart';
import 'package:t_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final themeModeController=Get.put(ThemeModeController());
    return Obx(
      ()=> GetMaterialApp(
        initialBinding: GeneralBindings(),
        debugShowCheckedModeBanner: false,
        themeMode: themeModeController.setThemeMode(),
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        home: const Onboarding(),
      ),
    );
  }
}
