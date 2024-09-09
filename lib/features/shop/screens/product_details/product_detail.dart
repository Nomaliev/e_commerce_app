import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/bottom_add_to_card.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_with_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rate_and_share.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppProductDetail extends StatelessWidget {
  const AppProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///---Product and its available alternatives

            const ProductWithSlider(),

            ///---Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace),
              child: Column(
                children: [
                  ///---Rating and Share
                  const RateAndShare(),

                  ///---Price, Product name, Stock, Brand
                  const ProductMetaData(),

                  ///---Product Attributes
                  const ProductAttributes(),

                  ///---Checkout
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  ///---Description
                  const AppSectionHeading(title: 'Description'),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const ReadMoreText(
                      'This is a product description for blue nike sleeve less vest. There are more things that can be added but i configurated.',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Show more',
                      trimExpandedText: ' Less',
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),

                  ///---Reviews
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppSectionHeading(title: 'Reviews(199)'),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
