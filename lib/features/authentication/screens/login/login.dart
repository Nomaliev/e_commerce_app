import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/padding_style.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class AppLoginScreen extends StatelessWidget {
  const AppLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const AppLoginHeader(),
              const SizedBox(height: AppSizes.sm),
              const AppLoginForm(),
              AppFormDivider(dividerText: AppTexts.orSignInWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const AppSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
