import 'package:flutter/material.dart';

class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading(
      {super.key,
      required this.title,
      this.buttonTitle = 'View all',
      this.textColor,
      this.onPressed,
      this.showActionButton = false});
  final String title, buttonTitle;
  final Color? textColor;
  final bool showActionButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
