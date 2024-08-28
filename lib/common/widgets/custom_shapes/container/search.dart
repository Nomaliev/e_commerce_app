import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key,
    required this.text,
    this.showBackground = true,
    this.showBorder = true,
    this.icon = Iconsax.search_normal,
  });
  final String text;
  final bool showBackground, showBorder;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Container(
        padding: const EdgeInsets.all(AppSizes.md),
        width: AppDeviceUtils.getScreenWidth(context),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? AppColors.dark
                    : AppColors.white
                : Colors.transparent,
            border: showBorder ? Border.all(color: AppColors.grey) : null,
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg)),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
