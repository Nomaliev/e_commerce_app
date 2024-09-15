import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/checkout.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppCart extends StatelessWidget {
  const AppCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.md),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => const AppCheckoutOrder());
            },
            child: const Text('Checkout \$256')),
      ),
      body: const Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace), child: CartItems()),
    );
  }
}
