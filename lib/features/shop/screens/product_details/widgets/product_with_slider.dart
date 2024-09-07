import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/images/app_rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductWithSlider extends StatelessWidget {
  const ProductWithSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return AppCurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 440,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(AppImages.productImage1))),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 40,
              left: AppSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => AppRoundedImage(
                          padding: const EdgeInsets.all(AppSizes.sm),
                          border: Border.all(color: AppColors.primary),
                          backgroundColor:
                              dark ? AppColors.dark : AppColors.white,
                          imageUrl: AppImages.productImage1,
                          width: 80,
                        ),
                    separatorBuilder: (_, __) => const SizedBox(
                          width: AppSizes.spaceBtwItems,
                        ),
                    itemCount: 6),
              ),
            ),
            const CustomAppBar(
              showBackArrow: true,
              actions: [
                AppCircularIcon(icon: Iconsax.heart5, iconColor: Colors.red)
              ],
            )
          ],
        ),
      ),
    );
  }
}
