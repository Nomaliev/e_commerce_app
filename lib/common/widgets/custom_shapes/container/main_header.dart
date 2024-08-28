import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/circular.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:t_store/utils/constants/colors.dart';

class AppMainHeaderContainer extends StatelessWidget {
  const AppMainHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgeWidget(
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: AppCircularContainer(
                      backgroundColor: AppColors.white.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: AppCircularContainer(
                      backgroundColor: AppColors.white.withOpacity(0.1))),
              child
            ],
          ),
        ),
      ),
    );
  }
}
