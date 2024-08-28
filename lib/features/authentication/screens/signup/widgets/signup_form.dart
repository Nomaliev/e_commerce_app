import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/email_verification.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/conditions.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class AppSignUpForm extends StatelessWidget {
  const AppSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: AppTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: AppTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            decoration: const InputDecoration(
                labelText: AppTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            decoration: const InputDecoration(
                labelText: AppTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            decoration: const InputDecoration(
                labelText: AppTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: AppTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          const AppSignUpConditions(),
          const SizedBox(height: AppSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const AppEmailVerification()),
                child: const Text(AppTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
