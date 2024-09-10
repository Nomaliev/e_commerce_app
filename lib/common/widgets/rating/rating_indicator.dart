import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class AppRatingBarIndicator extends StatelessWidget {
  const AppRatingBarIndicator({
    super.key,
    required this.rate,
    this.itemSize = 20,
  });
  final double rate;
  final double itemSize;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemSize: itemSize,
      rating: rate,
      itemBuilder: (_, __) => const Icon(
        Iconsax.star1,
        color: Colors.amber,
      ),
    );
  }
}
