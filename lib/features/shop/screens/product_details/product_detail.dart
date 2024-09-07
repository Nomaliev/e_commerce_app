import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_with_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rate_and_share.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppProductDetail extends StatelessWidget {
  const AppProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///---Product and its available alternatives

            ProductWithSlider(),

            ///---Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace),
              child: Column(
                children: [
                  ///---Rating and Share
                  RateAndShare(),

                  ///---Price, Product name, Stock, Brand
                  ProductMetaData(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
