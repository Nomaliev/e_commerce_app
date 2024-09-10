import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key,
    required this.rate,
    required this.value,
  });
  final String rate;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(rate, style: Theme.of(context).textTheme.bodyLarge),
        ),
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 11,
            backgroundColor: AppColors.grey,
            borderRadius: BorderRadius.circular(7),
            valueColor: const AlwaysStoppedAnimation(AppColors.primary),
          ),
        )
      ],
    );
  }
}
