import 'package:flutter/material.dart';

class AppProductTitleText extends StatelessWidget {
  const AppProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxlines = 2,
    this.textAlign,
  });
  final String title;
  final bool smallSize;
  final int maxlines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
    );
  }
}
