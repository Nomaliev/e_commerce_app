import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadow_style.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/images/app_rounded_image.dart';
import 'package:t_store/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/common/widgets/text/product_title_text.dart';
import 'package:t_store/features/shop/screens/product_details/product_detail.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        Get.to(() => const AppProductDetail());
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [AppShadowStyle.shadowStyle],
            borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
            color: dark ? AppColors.darkerGrey : AppColors.white),
        child: Column(
          children: [
            AppRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  const AppRoundedImage(imageUrl: AppImages.productImage1),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: AppRoundedContainer(
                      radius: AppSizes.sm,
                      backgroundColor: AppColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.sm, vertical: AppSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: AppColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                      width: 40,
                      height: 40,
                      top: 0,
                      right: 0,
                      child: AppCircularIcon(
                        icon: Iconsax.heart5,
                        iconColor: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            const Padding(
              padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppProductTitleText(
                    title: 'Green Nike Air Shoes',
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems / 2),
                  AppBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: AppSizes.sm),
                  child: AppProductPriceText(
                    price: '35.0',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(AppSizes.productImageRadius))),
                  child: const SizedBox(
                    width: AppSizes.iconLg * 1.2,
                    height: AppSizes.iconLg * 1.2,
                    child: Icon(
                      Iconsax.add,
                      color: AppColors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
