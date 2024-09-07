import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded.dart';
import 'package:t_store/common/widgets/images/app_circular_image.dart';
import 'package:t_store/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/common/widgets/text/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///---Price and Sale price
        Row(
          children: [
            AppRoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm, vertical: AppSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: AppSizes.spaceBtwItems),
            const AppProductPriceText(price: '175', isLarge: true)
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        ///---Product Name
        const AppProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),

        ///---Stock Status
        Row(
          children: [
            Text('Status :', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(width: AppSizes.spaceBtwItems / 1.5),
            const AppProductTitleText(title: 'In Stock'),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        ///---Brand
        const Row(
          children: [
            AppCircularImage(image: AppImages.nikeLogo, width: 32, height: 32),
            AppBrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            )
          ],
        )
      ],
    );
  }
}
