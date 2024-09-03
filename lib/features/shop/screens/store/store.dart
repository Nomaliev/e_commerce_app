import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded.dart';
import 'package:t_store/common/widgets/custom_shapes/container/search.dart';
import 'package:t_store/common/widgets/images/app_circular_image.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:t_store/utils/constants/colors.dart';

class AppStore extends StatelessWidget {
  const AppStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [ShoppingCounter(onPressed: () {})],
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
                      const AppSectionHeading(
                          title: 'Featured Brands', showActionButton: true),
                      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
                      AppGridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            child: AppRoundedContainer(
                              padding: const EdgeInsets.all(AppSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                ///Icon
                                children: [
                                  const Flexible(
                                    child: AppCircularImage(
                                        image: AppImages.clothIcon),
                                  ),
                                  const SizedBox(
                                      height: AppSizes.spaceBtwItems / 2),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const AppBrandTitleTextWithVerifiedIcon(
                                            title: 'Nike',
                                            brandTextSize: TextSizes.large),
                                        Text(
                                          '256 products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
