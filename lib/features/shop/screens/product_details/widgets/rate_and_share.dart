import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';

class RateAndShare extends StatelessWidget {
  const RateAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RatingBarIndicator(
                rating: 0.75,
                itemCount: 1,
                itemSize: 25,
                itemBuilder: (_, __) =>
                    const Icon(Iconsax.star1, color: Colors.amber)),
            const SizedBox(width: AppSizes.spaceBtwItems / 3),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '4.8',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: '(199)',
                      style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
            )
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share))
      ],
    );
  }
}
