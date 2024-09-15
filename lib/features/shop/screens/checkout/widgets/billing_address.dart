import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          showActionButton: true,
          onPressed: () {},
        ),
        Text('Tabriz Nomaliyev', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: AppSizes.sm),
        const Row(
          children: [
            Icon(Icons.phone, size: 15),
            SizedBox(width: AppSizes.spaceBtwItems),
            Text('+23-234-5345353'),
          ],
        ),
        const SizedBox(height: AppSizes.sm),
        const Row(
          children: [
            Icon(Iconsax.global, size: 15),
            SizedBox(width: AppSizes.spaceBtwItems),
            Text('South Liana, Maine, B5869, USA'),
          ],
        )
      ],
    );
  }
}
