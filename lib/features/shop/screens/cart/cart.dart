import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/products/cart/add_remove_product.dart';
import 'package:t_store/common/widgets/products/cart/cart_item.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppCart extends StatelessWidget {
const AppCart({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CustomAppBar(showBackArrow: true,title: Text('Cart',
      style: Theme.of(context).textTheme.headlineMedium),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.md),
        child: ElevatedButton(onPressed: () {}, child: const Text('Checkout \$256')),
      ),
      body: Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: ListView.separated(separatorBuilder: (_, __) => const SizedBox(height: AppSizes.spaceBtwSections),
      itemCount: 6,
      itemBuilder: (_, index) => const Column(children: [
        AppCartItem(),
        SizedBox(height:AppSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width:70),
              AppRemoveAddProduct(),

                ],
              ),
              AppProductPriceText(price: '250'),
            ],
          ),
          ],
          )
          )
          ),
    );
  }
}