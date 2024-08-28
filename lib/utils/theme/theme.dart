import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/custom_themes.dart/app_bar_theme.dart';
import 'package:t_store/utils/theme/custom_themes.dart/bottom_sheet_theme.dart';
import 'package:t_store/utils/theme/custom_themes.dart/check_box_theme.dart';
import 'package:t_store/utils/theme/custom_themes.dart/chip_theme.dart';
import 'package:t_store/utils/theme/custom_themes.dart/elevated_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes.dart/outlined_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes.dart/text_field_theme.dart';
import 'package:t_store/utils/theme/custom_themes.dart/text_theme.dart';

//Light Theme
class AppThemes {
  AppThemes._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: AppTextTheme.ligthTextTheme,
      chipTheme: AppChipTheme.lightChipTheme,
      appBarTheme: AppAppBarTheme.lightAppBarTheme,
      checkboxTheme: AppCheckBox.lightCheckBoxTheme,
      bottomSheetTheme: AppButtonTheme.lightBottomSheetTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: AppTextFieldTheme.lightTextFieldTheme);

  //Dark Theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: AppTextTheme.darkTextTheme,
      chipTheme: AppChipTheme.darkChipTheme,
      appBarTheme: AppAppBarTheme.darkAppBarTheme,
      checkboxTheme: AppCheckBox.darkCheckBoxTheme,
      bottomSheetTheme: AppButtonTheme.darkBottomSheetTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: AppTextFieldTheme.darkTextFieldTheme);
}
