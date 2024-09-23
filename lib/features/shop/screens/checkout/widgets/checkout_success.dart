import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/padding_style.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CheckoutSuccess extends StatelessWidget {
  const CheckoutSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPaddingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            const SizedBox(height: 140),
            Image(
              image: const AssetImage(AppImages.successfulPaymentIcon),
              width: AppHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            Text('Payment Successful',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text('Enjoy your day',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const AppNavigation()),
                  child: const Text(AppTexts.tContinue)),
            )
          ],
        ),
      ),
    );
  }
}
