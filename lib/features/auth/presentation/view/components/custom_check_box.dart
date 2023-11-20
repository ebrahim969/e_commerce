import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      side: const BorderSide(color: AppColors.greyColor),
      value: value,
      onChanged:(newValue) {
      setState(() {
        value = newValue;
      });
    },);
  }
}