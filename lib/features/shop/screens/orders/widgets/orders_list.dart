import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) =>
            const SizedBox(height: AppSizes.spaceBtwItems),
        itemCount: 10,
        itemBuilder: (_, index) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: AppRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(AppSizes.md),
                backgroundColor: dark ? AppColors.dark : AppColors.light,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        const Icon(Iconsax.ship),
                        const SizedBox(width: AppSizes.spaceBtwItems / 2),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Processing',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .apply(
                                          color: AppColors.primary,
                                          fontWeightDelta: 1)),
                              Text('15 Sep 2024',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall)
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.arrow_right_3))
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    Row(
                      children: [
                        const Icon(Iconsax.shopping_cart),
                        const SizedBox(width: AppSizes.spaceBtwItems / 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#245f3]',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                        const SizedBox(width: AppSizes.spaceBtwSections * 1.8),
                        const Icon(Iconsax.calendar),
                        const SizedBox(width: AppSizes.spaceBtwItems / 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('26 Nov 2024',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
