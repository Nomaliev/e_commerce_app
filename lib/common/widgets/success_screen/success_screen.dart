import 'package:flutter/material.dart';
import 'package:t_store/common/styles/padding_style.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class AppSuccessScreen extends StatelessWidget {
  const AppSuccessScreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.onPressed});
  final String title, subtitle, image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPaddingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            const SizedBox(height: 140),
            Image(
              image: AssetImage(image),
              width: AppHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            Text(title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: onPressed, child: const Text(AppTexts.tContinue)),
            )
          ],
        ),
      ),
    );
  }
}
