import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class AppCouponWidget extends StatelessWidget {
  const AppCouponWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: TextFormField(
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: 'Have a promo code? Enter here'),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        SizedBox(
            width: 80,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark
                      ? AppColors.white.withOpacity(0.5)
                      : AppColors.dark.withOpacity(0.5),
                  backgroundColor: AppColors.darkGrey.withOpacity(0.2)),
              child: const Text('Apply'),
            ))
      ],
    );
  }
}
