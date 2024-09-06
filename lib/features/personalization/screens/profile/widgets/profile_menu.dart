import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    this.icon = Iconsax.arrow_right_34,
    required this.title,
    required this.value,
    required this.onTap,
  });
  final IconData icon;
  final String title, value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Text(title,
                      style: Theme.of(context).textTheme.bodySmall)),
              Expanded(
                  flex: 5,
                  child: Text(value,
                      style: Theme.of(context).textTheme.bodyMedium)),
              Icon(icon, size: 18)
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems)
        ],
      ),
    );
  }
}
