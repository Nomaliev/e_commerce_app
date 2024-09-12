import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({Key? key, required this.isSelected}) : super(key: key);
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return AppRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          isSelected ? AppColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: isSelected
          ? Colors.transparent
          : dark
              ? AppColors.darkGrey
              : AppColors.grey,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: const EdgeInsets.all(AppSizes.md),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(isSelected ? Iconsax.tick_circle5 : null,
                color: isSelected
                    ? dark
                        ? AppColors.light
                        : AppColors.dark
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Maria Perez',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: AppSizes.xs),
              const Text('(+123) 456 7890',
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: AppSizes.xs),
              const Text('82356 Timmy Coves, South Liana, Maine, 87665, USA',
                  softWrap: true)
            ],
          )
        ],
      ),
    );
  }
}
