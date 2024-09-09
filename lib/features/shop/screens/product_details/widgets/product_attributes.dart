import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/choice_chips/choice_chip.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/common/widgets/text/product_title_text.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        AppRoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const AppSectionHeading(title: 'Variation'),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    children: [
                      Row(
                        children: [
                          const AppProductTitleText(
                              title: 'Price : ', smallSize: true),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: AppSizes.spaceBtwItems / 2),
                          const AppProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const AppProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const AppProductTitleText(
                  title:
                      'This is the description of the product and it can max contain 4 lines',
                  smallSize: true,
                  maxlines: 4)
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        const AppSectionHeading(title: 'Colors'),
        const SizedBox(height: AppSizes.sm),
        Row(
          children: [
            AppChoiceChip(
                text: 'Green', selected: true, onSelected: (value) {}),
            AppChoiceChip(
                text: 'Blue', selected: false, onSelected: (value) {}),
            AppChoiceChip(
                text: 'Yellow', selected: false, onSelected: (value) {})
          ],
        ),
        const SizedBox(height: AppSizes.sm),
        const AppSectionHeading(title: 'Size'),
        const SizedBox(height: AppSizes.sm),
        Row(
          children: [
            AppChoiceChip(
                text: 'EU 34', selected: true, onSelected: (value) {}),
            const SizedBox(width: AppSizes.spaceBtwItems / 2),
            AppChoiceChip(
                text: 'EU 36', selected: false, onSelected: (value) {}),
            const SizedBox(width: AppSizes.spaceBtwItems / 2),
            AppChoiceChip(
                text: 'EU 38', selected: false, onSelected: (value) {}),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwSections)
      ],
    );
  }
}
