import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/signin/signin_controller.dart';
import 'package:t_store/features/authentication/screens/forgetpassword/forget_password.dart';
import 'package:t_store/features/authentication/screens/signup/sign_up.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/validators/validation.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              validator: (value) => AppValidator.validateEmail(value),
              controller: controller.email,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: AppTexts.email),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwInputFields,
            ),
            Obx(
              () => TextFormField(
                validator: (value) =>
                    AppValidator.validateEmptyField("Password", value),
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                    labelText: AppTexts.password,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        icon: Icon(controller.hidePassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye))),
              ),
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
                        child: Obx(() => Checkbox(
                            value: controller.rememberMe.value,
                            onChanged: (value) => controller.rememberMe.value =
                                !controller.rememberMe.value))),
                    GestureDetector(
                      child: const Text(AppTexts.rememberMe),
                      onTap: () => controller.rememberMe.value =
                          !controller.rememberMe.value,
                    )
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
                    onPressed: () => controller.signIn(),
                    child: const Text(AppTexts.signIn))),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Get.to(() => const AppSignUpScreen());
                    },
                    child: const Text(AppTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
