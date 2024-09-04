import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_show_case.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class StoreCategoryTab extends StatelessWidget {
  const StoreCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                ///Brands
                const BrandShowCase(
                  images: [
                    AppImages.productImage1,
                    AppImages.productImage2,
                    AppImages.productImage3
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),

                ///Products
                AppSectionHeading(
                  title: 'You might like',
                  showActionButton: true,
                  onPressed: () {},
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                AppGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical(),
                )
              ],
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems)
        ]);
  }
}
