import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';

class ShoppingCounter extends StatelessWidget {
  const ShoppingCounter({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.shopping_bag,
              color: AppColors.white,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.black),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: AppColors.white, fontSize: 10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
