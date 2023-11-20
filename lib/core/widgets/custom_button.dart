import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.backgroundColor,
      this.borderRadius,
      required this.text,
      this.onPressed,
      this.height,
      this.width});

  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onPressed;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56,
      width: width ?? Get.width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          // shape: RoundedRectangleBorder(
          //     borderRadius: borderRadius ?? BorderRadius.circular(10)),
        ),
        onPressed: onPressed,
        child: Text(text,
            style: Styles.style24
                .copyWith(fontSize: 18, color: AppColors.whiteColor)),
      ),
    );
  }
}
