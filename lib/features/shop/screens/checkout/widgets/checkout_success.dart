import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class CheckoutSuccess extends StatelessWidget {
  const CheckoutSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSuccessScreen(
      title: 'Payment Success !',
      subtitle: 'Your item will be shipped soon !',
      image: AppImages.successfulPaymentIcon,
      onPressed: () {
        Get.to(() => const AppNavigation());
      },
    );
  }
}
