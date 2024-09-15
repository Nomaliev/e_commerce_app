import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/orders/widgets/orders_list.dart';

class AppOrders extends StatelessWidget {
  const AppOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('My Orders',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: const OrdersList(),
    );
  }
}
