import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/images/app_rounded_image.dart';
import 'package:t_store/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/text/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class AppCartItem extends StatelessWidget {
  const AppCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        AppRoundedImage(
            imageUrl: AppImages.productImage1,
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? AppColors.darkerGrey : AppColors.light),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const AppBrandTitleTextWithVerifiedIcon(title: 'Nike'),
              const AppProductTitleText(
                  title: 'Green Sports Shoe', maxlines: 1),
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'US 08',
                      style: Theme.of(context).textTheme.bodyLarge)
                ],
              )),
            ],
          ),
        )
      ],
    );
  }
}
