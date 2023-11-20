import 'package:flutter/material.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class SlidingLogoAnimated extends StatelessWidget {
  const SlidingLogoAnimated({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Center(child:Text(
            "Ecommerce UI Theme",
            style: Styles.style24.copyWith(color: AppColors.primaryColor),
          ) ),
          );
        });
  }
}