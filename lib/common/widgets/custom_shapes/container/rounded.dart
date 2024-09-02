import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppRoundedContainer extends StatelessWidget {
const AppRoundedContainer({ super.key, 
this.radius=AppSizes.cardRadiusLg, this.child, 
this.showBorder=false, 
this.borderColor=AppColors.borderPrimary, 
this.backgroundColor=AppColors.white, 
this.padding, 
this.margin, 
this.width, 
this.height });

final double? width,height;
final double radius;
final Widget? child;
final bool showBorder;
final Color borderColor,backgroundColor;
final EdgeInsetsGeometry? padding,margin;

  @override
  Widget build(BuildContext context){
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder? Border.all(color: borderColor):null),
        child: child,
    );
  }
}