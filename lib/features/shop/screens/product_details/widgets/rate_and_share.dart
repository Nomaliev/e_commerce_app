import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
          children: [
            const Icon(Iconsax.star1, color: Colors.amber, size: 30),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0',
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
