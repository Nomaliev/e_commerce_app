import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/app_rounded_image.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppSubCategories extends StatelessWidget {
  const AppSubCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Sports',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AppRoundedImage(imageUrl: AppImages.promoBanner1),
              const SizedBox(height: AppSizes.spaceBtwSections),
              Column(
                children: [
                  AppSectionHeading(
                    title: 'Sports shirts',
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const ProductCardHorizontal()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
