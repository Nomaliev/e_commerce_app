import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppCheckoutOrder extends StatelessWidget {
const AppCheckoutOrder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CustomAppBar(title: Text('Order Review',
      style: Theme.of(context).textTheme.headlineSmall),showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: CartItems(showAddRemoveButton: false),
      ),
    );
  }
}