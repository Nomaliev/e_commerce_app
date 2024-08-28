import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/forgetpassword/forget_password.dart';
import 'package:t_store/features/authentication/screens/signup/sign_up.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: AppTexts.email),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwInputFields,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: AppTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: 24,
                        child: Checkbox(value: true, onChanged: (value) {})),
                    const Text(AppTexts.rememberMe)
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(() => const AppForgetPassword()),
                    child: const Text(AppTexts.forgetPassword)),
              ],
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(() => const AppNavigation()),
                    child: const Text(AppTexts.signIn))),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Get.offAll(() => const AppSignUpScreen());
                    },
                    child: const Text(AppTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
