import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_shapes/container/circular.dart';
import 'package:t_store/common/widgets/images/app_rounded_image.dart';
import 'package:t_store/features/shop/controllers/home_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeSlidingBanners extends StatelessWidget {
  const HomeSlidingBanners({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners
                .map((url) => AppRoundedImage(imageUrl: url))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) {
                controller.updatePageIndex(index);
              },
            )),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < 3; i++)
                AppCircularContainer(
                    margin: 10,
                    height: 4,
                    width: 20,
                    backgroundColor:
                        controller.carouselCurrentIndex.value == i
                            ? AppColors.primary
                            : AppColors.grey),
            ],
          ),
        )
      ],
    );
  }
}
