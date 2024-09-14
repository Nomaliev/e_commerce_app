import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';


class AppRemoveAddProduct extends StatelessWidget {
  const AppRemoveAddProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppCircularIcon(
          width: 32,
          height: 32,
          size: AppSizes.md,
            onPressed: () {},
            icon: Iconsax.minus,
            backgroundColor: AppColors.darkerGrey,
            iconColor: AppColors.white),
            const SizedBox(width: AppSizes.spaceBtwItems),
    Text('2', style: Theme.of(context).textTheme.titleSmall),
     const SizedBox(width: AppSizes.spaceBtwItems),
    AppCircularIcon(
      width: 32,
      height: 32,
      size: AppSizes.md,
        onPressed: () {},
        icon: Iconsax.add,
        backgroundColor: AppColors.primary,
        iconColor: AppColors.white)
      ],
    );
  }
}