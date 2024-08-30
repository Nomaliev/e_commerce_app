import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/main_header.dart';
import 'package:t_store/common/widgets/custom_shapes/container/search.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_popular_categories.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            AppMainHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  HomeAppBar(),
                  SizedBox(height: AppSizes.spaceBtwSections),
                  //Search
                  AppSearchContainer(text: 'Search in Store'),
                  SizedBox(height: AppSizes.spaceBtwSections),
                  //Popular Categories
                  HomePopularCategories()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
