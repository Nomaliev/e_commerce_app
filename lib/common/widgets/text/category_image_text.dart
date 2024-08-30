import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class AppCategoryImageText extends StatelessWidget {
  const AppCategoryImageText({
    super.key,
    required this.text,
    required this.image,
    this.textColor = AppColors.white,
    required this.onTap,
  });
  final String text, image;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                  color: dark ? AppColors.black : AppColors.white,
                  borderRadius: BorderRadius.circular(56)),
              child: Center(
                child: Image(
                  color: dark ? AppColors.white : AppColors.black,
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
