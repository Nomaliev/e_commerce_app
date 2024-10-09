import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/personalization/controllers/re_authenticate_controller.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/validators/validation.dart';

class ReAuthenticate extends StatelessWidget {
  const ReAuthenticate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ReAuthenticateController());
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Re-Authenticate User',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Form(
          key: controller.reAuthenticateFormKey,
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
                              : Iconsax.eye)),
                    )),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>
                        controller.reAuthenticateEmailAndPassword(),
                    child: const Text('Verify')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
