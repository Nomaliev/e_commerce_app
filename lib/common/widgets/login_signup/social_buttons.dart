import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/signin/signin_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppSocialButtons extends StatelessWidget {
  const AppSocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AppColors.grey)),
          child: IconButton(
              onPressed: () => controller.googleSignIn(),
              icon: const Image(
                image: AssetImage(AppImages.google),
                height: AppSizes.iconMd,
                width: AppSizes.iconMd,
              )),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AppColors.grey)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(AppImages.facebook),
                height: AppSizes.iconMd,
                width: AppSizes.iconMd,
              )),
        ),
      ],
    );
  }
}
