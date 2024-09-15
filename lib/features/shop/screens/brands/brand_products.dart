import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppBrandProducts extends StatelessWidget {
  const AppBrandProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Nike', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              const AppBrandCard(showBorder: true),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const AppSectionHeading(title: 'Products'),
              const SizedBox(height: AppSizes.spaceBtwItems),
              DropdownButtonFormField(
                items: [
                  'Name',
                  'Higher Price',
                  'Lower Price',
                  'Sale',
                  'Newest',
                  'Popularity'
                ]
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {},
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.sort),
                    contentPadding: EdgeInsets.all(AppSizes.defaultSpace)),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              AppGridLayout(
                itemCount: 10,
                itemBuilder: (_, index) => const ProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
