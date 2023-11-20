import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key,
      required this.hinttext,
      this.maxLines = 1,
      this.onSaved,
      this.onCahnge,
      this.validator,
      this.width,
      this.sufixIcon,
      this.controller});

  final String hinttext;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onCahnge;
  final String? Function(String?)? validator;
  final double? width;
  final Widget? sufixIcon;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        shadowColor: AppColors.greyColor.withOpacity(.5),
        child: TextFormField(
          validator: validator,
          controller: controller,
          onChanged: onCahnge,
          onSaved: onSaved,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            border: InputBorder.none,
              suffixIcon: sufixIcon,
              hintText: hinttext,
              hintStyle: Styles.style12),
          maxLines: maxLines,
        ),
      ),
    );
  }
}
