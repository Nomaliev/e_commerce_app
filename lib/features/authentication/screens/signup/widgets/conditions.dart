import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class AppSignUpConditions extends StatelessWidget {
  const AppSignUpConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Expanded(
          child: SizedBox(
              height: AppSizes.defaultSpace,
              width: AppSizes.defaultSpace,
              child: Obx(
                () => Checkbox(
                    value: controller.privacyPolicy.value,
                    onChanged: (value) => controller.privacyPolicy.value =
                        !controller.privacyPolicy.value),
              )),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${AppTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: AppTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primary)),
              TextSpan(
                  text: ' ${AppTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: AppTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primary)),
            ],
          ),
        ),
      ],
    );
  }
}
