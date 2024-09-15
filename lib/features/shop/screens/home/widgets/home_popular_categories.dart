import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/text/category_image_text.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomePopularCategories extends StatelessWidget {
  const HomePopularCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
      child: Column(
        children: [
          const AppSectionHeading(
            title: 'Popular Categories',
            textColor: AppColors.white,
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return AppCategoryImageText(
                  text: 'Shoes',
                  image: AppImages.shoeIcon,
                  onTap: () {
                    Get.to(() => const AppSubCategories());
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
