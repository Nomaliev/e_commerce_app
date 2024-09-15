import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BillingAmount extends StatelessWidget {
  const BillingAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Subtotal'),
            Text(
              '\$256.0',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Shipping Fee'),
            Text(
              '\$0.0',
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Tax Fee'),
            Text(
              '\$0.0',
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Order Total'), AppProductPriceText(price: '256.0')],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems)
      ],
    );
  }
}
