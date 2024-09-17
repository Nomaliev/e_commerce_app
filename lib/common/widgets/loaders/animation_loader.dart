import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppAnimationLoader extends StatelessWidget {
  const AppAnimationLoader(
      {Key? key,
      required this.text,
      required this.animation,
      this.showAction = false,
      this.actionText,
      this.actionOnPressed})
      : super(key: key);
  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? actionOnPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: AppSizes.defaultSpace),
          Text(text,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: AppSizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: actionOnPressed,
                    child: Text(
                      actionText == null ? '' : actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: AppColors.light),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
