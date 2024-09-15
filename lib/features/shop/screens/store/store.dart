import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/appbar/tabbar.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/container/search.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/brands/brands.dart';
import 'package:t_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:t_store/utils/constants/colors.dart';

class AppStore extends StatelessWidget {
  const AppStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: const [ShoppingCounter()],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      const SizedBox(height: AppSizes.spaceBtwItems),

                      ///Search bar
                      const AppSearchContainer(
                        text: 'Search',
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),

                      ///Featured brands
                      AppSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {
                          Get.to(() => const AppBrands());
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
                      AppGridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return const AppBrandCard(showBorder: true);
                        },
                      )
                    ],
                  ),
                ),
                bottom: const AppTabBar(
                  tabs: [
                    Text('Sports'),
                    Text('Furniture'),
                    Text('Electronics'),
                    Text('Clothes'),
                    Text('Cosmetics'),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(children: [
            StoreCategoryTab(),
            StoreCategoryTab(),
            StoreCategoryTab(),
            StoreCategoryTab(),
            StoreCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
