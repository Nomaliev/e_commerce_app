import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/main_header.dart';
import 'package:t_store/common/widgets/custom_shapes/container/search.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            AppMainHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  const HomeAppBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const AppSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: AppSectionHeading(
                      title: 'Popular Categories',
                      onPressed: () {},
                    ),
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

class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View all',
    this.textColor,
    required this.onPressed,
  });
  final String title, buttonTitle;
  final Color? textColor;
  final bool showActionButton = false;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
