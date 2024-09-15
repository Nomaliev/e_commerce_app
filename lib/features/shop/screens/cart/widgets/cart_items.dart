import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/cart/add_remove_product.dart';
import 'package:t_store/common/widgets/products/cart/cart_item.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });
  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) =>
            const SizedBox(height: AppSizes.spaceBtwSections),
        itemCount: 2,
        itemBuilder: (_, index) => Column(
              children: [
                const AppCartItem(),
                if (showAddRemoveButton)
                  const SizedBox(height: AppSizes.spaceBtwItems),
                if (showAddRemoveButton)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 70),
                          AppRemoveAddProduct(),
                        ],
                      ),
                      AppProductPriceText(price: '250'),
                    ],
                  ),
              ],
            ));
  }
}
