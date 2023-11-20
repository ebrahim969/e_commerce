import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import '../../components/custom_check_box.dart';

class RememberAndForgetPasswordSection extends StatelessWidget {
  const RememberAndForgetPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: const [
          CustomCheckBox(),
          Text("Remember me", style: Styles.style12,)
        ],),
        TextButton(onPressed: (){}, child: const Text("Forget password", style: Styles.style12,))
      ],
    );
  }
}