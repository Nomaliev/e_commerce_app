import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          showActionButton: true,
          onPressed: () {},
        ),
        Row(
          children: [
            const Image(
                image: AssetImage(AppImages.paypal),
                fit: BoxFit.contain,
                width: 15),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge)
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems)
      ],
    );
  }
}
