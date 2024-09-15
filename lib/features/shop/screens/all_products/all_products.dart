import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppAllProducts extends StatelessWidget {
  const AppAllProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Popular Products',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
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
