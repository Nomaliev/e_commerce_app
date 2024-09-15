import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/container/rounded.dart';
import 'package:t_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_address.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_amount.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/checkout_success.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/payment_method.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class AppCheckoutOrder extends StatelessWidget {
  const AppCheckoutOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: CustomAppBar(
            title: Text('Order Review',
                style: Theme.of(context).textTheme.headlineMedium),
            showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                const CartItems(showAddRemoveButton: false),
                const SizedBox(height: AppSizes.spaceBtwSections),
                const AppCouponWidget(),
                const SizedBox(height: AppSizes.spaceBtwSections),
                AppRoundedContainer(
                  padding: const EdgeInsets.all(AppSizes.md),
                  showBorder: true,
                  backgroundColor: dark ? AppColors.black : AppColors.white,
                  child: const Column(
                    children: [
                      BillingAmount(),
                      Divider(),
                      PaymentMethod(),
                      BillingAddress()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: ElevatedButton(
              onPressed: () {
                Get.to(() => const CheckoutSuccess());
              },
              child: const Text('Checkout \$256.0')),
        ));
  }
}
