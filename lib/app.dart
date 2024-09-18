import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/bindings/general_bindings.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GeneralBindings(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const AppLoginScreen(),
    );
  }
}
