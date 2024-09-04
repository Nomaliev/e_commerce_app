import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/main_header.dart';
import 'package:t_store/common/widgets/custom_shapes/container/search.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_popular_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_sliding_banners.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            const AppMainHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  HomeAppBar(),
                  SizedBox(height: AppSizes.spaceBtwSections),
                  //Search
                  AppSearchContainer(text: 'Search in Store'),
                  SizedBox(height: AppSizes.spaceBtwSections),
                  //Popular Categories
                  HomePopularCategories()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const HomeSlidingBanners(
                    banners: [
                      AppImages.promoBanner1,
                      AppImages.promoBanner2,
                      AppImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  AppSectionHeading(
                    title: 'Popular Products',
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  AppGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
