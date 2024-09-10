import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/rate_and_progress_indicator.dart';

class RateScore extends StatelessWidget {
  const RateScore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child:
                Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(rate: '5', value: 1),
              RatingProgressIndicator(rate: '4', value: 0.8),
              RatingProgressIndicator(rate: '3', value: 0.6),
              RatingProgressIndicator(rate: '2', value: 0.4),
              RatingProgressIndicator(rate: '1', value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}
