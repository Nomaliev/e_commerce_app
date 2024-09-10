import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded.dart';
import 'package:t_store/common/widgets/rating/rating_indicator.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.userProfileImage1),
                ),
                const SizedBox(width: AppSizes.spaceBtwItems),
                Text('Maria Perez',
                    style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Row(
          children: [
            const AppRatingBarIndicator(rate: 4, itemSize: 15),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('01 Sep, 2024', style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        const ReadMoreText(
          trimLines: 2,
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.primary),
          'The user interface of the app  is quite intuitive. I was able to navigate and make purchases seamlessly. Great job! ',
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        AppRoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tabriz's store",
                      style: Theme.of(context).textTheme.titleMedium),
                  Text('01 Sep, 2024',
                      style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const ReadMoreText(
                trimLines: 2,
                trimMode: TrimMode.Line,
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary),
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary),
                'The user interface of the app  is quite intuitive. I was able to navigate and make purchases seamlessly. Great job! ',
              )
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwSections)
      ],
    );
  }
}
