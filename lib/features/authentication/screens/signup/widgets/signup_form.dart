import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/conditions.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/validators/validation.dart';

class AppSignUpForm extends StatelessWidget {
  const AppSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      AppValidator.validateEmptyField('First Name', value),
                  controller: controller.firstName,
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: AppTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      AppValidator.validateEmptyField('Last Name', value),
                  controller: controller.lastName,
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
            validator: (value) =>
                AppValidator.validateEmptyField('Username', value),
            controller: controller.username,
            decoration: const InputDecoration(
                labelText: AppTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            validator: (value) => AppValidator.validateEmail(value),
            controller: controller.email,
            decoration: const InputDecoration(
                labelText: AppTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            validator: (value) => AppValidator.validatePhoneNumber(value),
            controller: controller.phoneNumber,
            decoration: const InputDecoration(
                labelText: AppTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Obx(
            () => TextFormField(
              validator: (value) => AppValidator.validatePassword(value),
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                  labelText: AppTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    icon: controller.hidePassword.value
                        ? const Icon(Iconsax.eye_slash)
                        : const Icon(Iconsax.eye),
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                  )),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Obx(
            () => TextFormField(
              validator: (value) => AppValidator.validatePasswordConfirm(value),
              controller: controller.passwordConfirm,
              obscureText: controller.hideConfirmPassword.value,
              decoration: InputDecoration(
                  labelText: AppTexts.passwordConfirm,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    icon: controller.hideConfirmPassword.value
                        ? const Icon(Iconsax.eye_slash)
                        : const Icon(Iconsax.eye),
                    onPressed: () => controller.hideConfirmPassword.value =
                        !controller.hideConfirmPassword.value,
                  )),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          const AppSignUpConditions(),
          const SizedBox(height: AppSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(AppTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
